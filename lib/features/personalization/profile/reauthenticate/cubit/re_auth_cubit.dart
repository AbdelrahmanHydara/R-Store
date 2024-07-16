import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/auth/login/cubit/login_cubit.dart';
import 'package:r_store/features/personalization/settings/cubit/user_cubit.dart';

part 're_auth_state.dart';

class ReAuthCubit extends Cubit<ReAuthState> {
  ReAuthCubit() : super(ReAuthInitial());

  final formKey = GlobalKey<FormState>();
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();

  void emitDeleteAccount(context) async {
    try {
      emit(DeleteAccountLoadingState());
      final _authUser = UserCubit();
      final _authLogin = LoginCubit();
      final provider = _authUser.authUser!.providerData.map((e) => e.providerId).first;
      if(provider.isEmpty) {
        if(provider == "google.com") {
          _authLogin.emitLoginWithGoogle(context);
          context.pushReplacementNamed(Routes.loginScreen);
        } else if(provider == "password"){
          context.pushReplacementNamed(Routes.reAuthenticateScreen);
        }
      }
    } catch(error) {
      emit(DeleteAccountErrorState(error.toString()));
    }

  }

  void deleteAccountWarningPop(context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "Delete Account",
        ),
        content: Text(
          "Are you sure you want to delete your account permanently? This action is not reversible and all of your data will be removed permanently.",

        ),
        contentPadding: EdgeInsets.all(16),
        actions: [
          ElevatedButton(
            onPressed: () async => emitDeleteAccount(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              side: const BorderSide(
                color: Colors.red,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,),
              child: Text("Delete"),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              context.pop();
            },
            child: Text("Cancel"),
          ),
        ],
      ),
    );
  }
}
