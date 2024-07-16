import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_store/features/auth/register/data/model/user_model.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState.initial());

  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
  final phoneController = TextEditingController();

  void emitRegisterState() {
    emit(const RegisterState.loading());

    _auth.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    ).then((data) {
      emitCreateUser(id: data.user!.uid);
      emit(RegisterState.success(data));
    }).catchError((error) {
      emit(RegisterState.error(error: error.toString()));
    });
  }

  void emitCreateUser({required String id}) {
    final userModel = UserModel(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      userName: userNameController.text,
      email: emailController.text,
      phone: phoneController.text,
      id: id,
      profilePicture: '',
    );

    _firestore.collection("users")
        .doc(id)
        .set(userModel.toJson())
        .then((value) {
      emit(RegisterState.createUserSuccess());
    })
        .catchError((error) {
      emit(RegisterState.createUserError(error: error.toString()));
    });
  }
}
