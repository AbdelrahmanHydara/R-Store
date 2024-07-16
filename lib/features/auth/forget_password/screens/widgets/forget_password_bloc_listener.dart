import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/auth/forget_password/cubit/forget_password_cubit.dart';
import 'package:r_store/features/auth/forget_password/cubit/forget_password_state.dart';

class ForgetPasswordBlocListener extends StatelessWidget {
  const ForgetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordCubit,ForgetPasswordState>(
      listenWhen: (previous, current) =>
      current is Success || current is Error,
      listener: (context, state) => state.whenOrNull(
        success: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Email Link Sent to Reset Your Password',
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
          context.pushNamed(
              Routes.resetPasswordScreen,
              arguments: context.read<ForgetPasswordCubit>().emailController,
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
      ),
      child: const SizedBox.shrink(),
    );
  }
}
