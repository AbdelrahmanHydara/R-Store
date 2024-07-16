import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/forget_password_bloc_listener.dart';
import 'widgets/form_forget_password.dart';
import 'widgets/title_subtitle_forget_password.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: const Column(
            children: [
              TitleSubtitleForgetPassword(),
              FormForgetPassword(),
              ForgetPasswordBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
