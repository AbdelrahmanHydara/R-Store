import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/auth/register/cubit/register_cubit.dart';
import 'package:r_store/features/auth/register/cubit/register_state.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
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
        success: (registerResponse) {
          context.pop();
          AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            title: MyStrings.congratulations,
            desc: MyStrings.signupSuccessful,
            btnCancelText: MyStrings.next,
            dismissOnTouchOutside: false,
            btnCancelOnPress: () {
              context.pushNamed(
                Routes.verifyEmailScreen,
                arguments: context.read<RegisterCubit>().emailController.text,
              );
            },
            btnCancelColor: MyColors.myPrimary,
          ).show();
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
      ),
      child: const SizedBox.shrink(),
    );
  }
}
