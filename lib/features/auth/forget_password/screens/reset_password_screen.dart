import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:r_store/core/constants/my_images.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/auth/forget_password/cubit/forget_password_cubit.dart';
import 'widgets/title_subtitle_reset_password.dart';

class ResetPasswordScreen extends StatelessWidget {
  final email;

  const ResetPasswordScreen({super.key, this.email,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.pushReplacementNamed(Routes.loginScreen);
            },
            icon: Icon(Icons.cancel_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            children: [
              Lottie.asset(
                width: double.infinity,
                height: 350.h,
                MyImages.verification,
              ),
              TitleSubtitleResetPassword(
                email: email,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.pushReplacementNamed(Routes.loginScreen);
                  },
                  child: Text(
                    MyStrings.done,
                  ),
                ),
              ),
              verticalSpace(16),
              TextButton(
                onPressed: () {
                  context.read<ForgetPasswordCubit>().emitResendPasswordEmail(email);
                },
                child: Text(
                  MyStrings.resendEmail,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
