import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'update_name_state.dart';

class UpdateNameCubit extends Cubit<UpdateNameState> {
  UpdateNameCubit() : super(UpdateNameInitial());

  final _db = FirebaseFirestore.instance;
  final _authUser = FirebaseAuth.instance.currentUser;

  final formKey = GlobalKey<FormState>();
  final firstName = TextEditingController();
  final lastName = TextEditingController();

  void emitUpdateUserName() {
    emit(UpdateUserNameLoading());

    _db.collection("users").doc(_authUser?.uid).update({
      "firstName" : firstName.text,
      "lastName" : lastName.text,
    }).then((value) {
      emit(UpdateUserNameSuccess());
    }).catchError((error) {
      emit(UpdateUserNameError(error.toString()));
    });
  }
}
