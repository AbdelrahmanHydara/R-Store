import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/components/SnackBar/my_snack_bar.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/features/auth/verify_email/cubit/verify_email_cubit.dart';
import 'package:r_store/features/auth/verify_email/cubit/verify_email_state.dart';

class VerifyEmailBlocListener extends StatelessWidget {
  const VerifyEmailBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailCubit, VerifyEmailState>(
      listenWhen: (previous, current) =>
      current is Success || current is Error,
      listener: (context, state) => state.whenOrNull(
        success: () {
          MySnackBar.success(
            text: "Please Check Your Inbox and Verify Your Email!", context: context,
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
