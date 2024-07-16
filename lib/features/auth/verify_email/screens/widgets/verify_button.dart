import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/features/auth/verify_email/cubit/verify_email_cubit.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              context.read<VerifyEmailCubit>().emitCheckEmailVerificationStatus(context);
            },
            child: Text(
              MyStrings.nextContinue,
            ),
          ),
        ),
        verticalSpace(16),
        TextButton(
          onPressed: () {
            context.read<VerifyEmailCubit>().emitSendEmailVerification();
          },
          child: Text(
            MyStrings.resendEmail,
          ),
        ),
      ],
    );
  }
}
