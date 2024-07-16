import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:r_store/core/components/success/success_screen.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/auth/verify_email/cubit/verify_email_state.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailState> {
  VerifyEmailCubit() : super(const VerifyEmailState.initial());

  final _currentUser = FirebaseAuth.instance.currentUser;

  void emitSendEmailVerification() {
    _currentUser?.sendEmailVerification()
        .then((value) {
          emit(VerifyEmailState.success());
    }).catchError((error) {
      emit(VerifyEmailState.error(error: error.toString()));
    });
  }

  emitSetTimerForAutoRedirect(context) {
    Timer.periodic(
      const Duration(
      seconds: 1,
    ), (timer) async {
        await _currentUser?.reload();
        final user = _currentUser;
        print(user?.emailVerified);
        if(user?.emailVerified ?? false) {
          timer.cancel();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessScreen(
                title: MyStrings.titleSuccess,
                subtitle: MyStrings.subtitleSuccess,
                onTap: () {
                  context.pushReplacementNamed(Routes.navigationMenuScreen);
              },
            ),
          ),
        );
      }},
    );
  }

  emitCheckEmailVerificationStatus(context) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SuccessScreen(
            title: MyStrings.titleSuccess,
            subtitle: MyStrings.subtitleSuccess,
            onTap: () {
              context.pushReplacementNamed(Routes.navigationMenuScreen);
            },
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Please Check Your Inbox and Verify Your Email!',
            style: TextStyle(
              color: MyColors.myWhite,
            ),
          ),
          duration: Duration(
            seconds: 5,
          ),
          backgroundColor: MyColors.myPrimary,
          behavior: SnackBarBehavior.floating,
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      );
    }
  }

  Future<void> emitLogout() async {
     await FirebaseAuth.instance.signOut();
  }
}
