import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/auth/login/cubit/login_cubit.dart';
import 'package:r_store/features/auth/login/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
      current is Loading || current is Success || current is Error
          || current is LoadingLoginWithGoogle || current is SuccessLoginWithGoogle || current is ErrorLoginWithGoogle,
      listener: (context, state) => state.whenOrNull(
        loading: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: MyColors.myPrimary,
              ),
            ),
          );
          return null;
        },
        success: (data) {
          context.pop();
          context.pushReplacementNamed(
            Routes.navigationMenuScreen,
          );
          return null;
        },
        error: (error) {
          context.pop();
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            title: MyStrings.error,
            desc: error,
            btnCancelText: MyStrings.gotIt,
            dismissOnTouchOutside: false,
            btnCancelOnPress: () {},
            btnCancelColor: MyColors.myPrimary,
          ).show();
          return null;
        },
        loadingLoginWithGoogle: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: MyColors.myPrimary,
              ),
            ),
          );
          return null;
        },
        successLoginWithGoogle: () {
          context.pop();
          context.pushReplacementNamed(Routes.navigationMenuScreen);
          return null;
        },
        errorLoginWithGoogle: (error) {
          context.pop();
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            title: MyStrings.error,
            desc: error,
            btnCancelText: MyStrings.gotIt,
            dismissOnTouchOutside: false,
            btnCancelOnPress: () {},
            btnCancelColor: MyColors.myPrimary,
          ).show();
          return null;
        },
      ),
      child: const SizedBox.shrink(),
    );
  }
}
