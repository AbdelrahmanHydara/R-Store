import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/components/auth/my_social_button.dart';
import 'widget/form_field_register.dart';
import 'widget/privacy_policy.dart';
import 'widget/register_bloc_listener.dart';
import 'widget/register_button.dart';
import 'widget/title_header_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: const MyAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleHeaderRegister(),
              FormFieldRegister(),
              PrivacyPolicy(),
              RegisterButton(),
              MySocialButton(),
              RegisterBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
