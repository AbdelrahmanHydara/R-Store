import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:r_store/core/components/SnackBar/my_snack_bar.dart';
import 'package:r_store/features/auth/register/data/model/user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial()) {
    emitGetUserDetails();
  }

  UserModel? userModel;

  final _db = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;
  final authUser = FirebaseAuth.instance.currentUser;

  // Save user record from any Registration provider
  Future<void> emitSaveUserRecord(UserCredential? userCredential,context) async {
    try {
      if(userModel!.id.isEmpty) {
       if(userCredential != null) {
        // Convert name to first and last name
        final nameParts = UserModel.nameParts(userCredential.user!.displayName??"");
        final username = UserModel.generateUsername(userCredential.user!.displayName??"");
         // Map Data
        final user = UserModel(
            id: userCredential.user!.uid,
            userName: username,
            firstName: nameParts[0],
            lastName: nameParts.length > 1 ? nameParts.sublist(1).join(" ") : "",
            email: userCredential.user!.email ?? "",
            phone: userCredential.user!.phoneNumber ?? "",
            profilePicture: userCredential.user!.photoURL??"",
        );
        await _db.collection("users").doc(user.id).set(user.toJson());
      }
      }
    } catch(error) {
      MySnackBar.error(text: "Something went wrong while saving your information. You can re-save your data in your profile", context: context);
    }
  }

  void emitGetUserDetails() {
    emit(GetUserDataLoadingState());

    _db.collection("users").doc(authUser?.uid)
        .get().then((value) {
      userModel = UserModel.fromJson(value.data() as Map<String, dynamic>);
      emit(GetUserDataSuccessState());
    }).catchError((error) {
      emit(GetUserDataErrorState(error.toString()));
    });

  }

  // Function to update user data in firebase
  Future<void> updateUserDetails(UserModel updateUser) async {
    try {
      await _db.collection("users").doc(updateUser.id).update(updateUser.toJson());
    } catch(error) {}
  }

  // Function to remove user data from firebase
  Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection("users").doc(userId).delete();
    } catch(error) {}
  }

  // Upload any Image
  Future<String> uploadImage(String path, XFile image) async {
    try {
      final ref = storage.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = ref.getDownloadURL();
      return url;
    } catch(error) {}
    return "";
  }

  void emitUploadUserProfileImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 70, maxHeight: 512, maxWidth: 512);
      if(image != null) {
        emit(UploadUserProfileImageLoadingState());
        final imageUrl = await uploadImage("users/image/profile/",image);
        _db.collection("users").doc(authUser?.uid).update({
          "profilePicture" : imageUrl,
        });
        userModel!.profilePicture = imageUrl;
        emit(UploadUserProfileImageSuccessState());
      }
    } catch(error) {
      emit(UploadUserProfileImageErrorState(error.toString()));
    }
  }
}
