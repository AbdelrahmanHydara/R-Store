import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(const ForgetPasswordState.initial());

  final _auth = FirebaseAuth.instance;

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  void emitSendPasswordEmail() {
    emit(const ForgetPasswordState.loading());

    _auth.sendPasswordResetEmail(
        email: emailController.text,
    ).then((data) {
      emit(ForgetPasswordState.success());
    }).catchError((error) {
      emit(ForgetPasswordState.error(error: error.toString()));
    });
  }

  void emitResendPasswordEmail(String email) {
    emit(const ForgetPasswordState.loading());

    _auth.sendPasswordResetEmail(
        email: email,
    ).then((data) {
      emit(ForgetPasswordState.success());
    }).catchError((error) {
      emit(ForgetPasswordState.error(error: error.toString()));
    });
  }
}
