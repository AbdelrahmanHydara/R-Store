import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:bloc/bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_store/core/helpers/local/cache_helper.dart';
import 'package:r_store/features/personalization/settings/cubit/user_cubit.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial()){
    emailController.text = CacheHelper.getData(key: "remember_me_email")??"";
    passwordController.text = CacheHelper.getData(key: "remember_me_password")??"";
  }

  final _userCubit = UserCubit();

  final _auth = FirebaseAuth.instance;

  bool rememberMe = false;

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void emitLoginState() {
    emit(const LoginState.loading());

    _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
    ).then((data) {
      if(rememberMe) {
        CacheHelper.savaData(key: "remember_me_email", value: emailController.text);
        CacheHelper.savaData(key: "remember_me_password", value: passwordController.text);
      }
      emit(LoginState.success(data));
    }).catchError((error) {
      emit(LoginState.error(error: error.toString()));
    });
  }

  void emitLoginWithGoogle(context) {
    emit(const LoginState.loadingLoginWithGoogle());

    loginWithGoogle(context).then((value) {
      emit(LoginState.successLoginWithGoogle());
    }).catchError((error) {
      emit(LoginState.errorLoginWithGoogle(error: error.toString()));
    });
  }

  Future<void> loginWithGoogle(context) async {
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await userAccount?.authentication;
      final credentials = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final userCredential = await _auth.signInWithCredential(credentials);
      return await _userCubit.emitSaveUserRecord(userCredential,context);
  }
}
