import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar_zero_height.dart';
import 'package:r_store/core/components/auth/my_social_button.dart';
import 'package:r_store/features/auth/login/cubit/login_cubit.dart';
import 'widgets/header_login.dart';
import 'widgets/login_bloc_listener.dart';
import 'widgets/remember_me.dart';
import 'widgets/sign_in_and_create_account.dart';
import 'widgets/form_field_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarZeroHeight(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderLogin(),
              FormFieldLogin(),
              RememberMe(),
              SignInAndCreateAccount(),
              MySocialButton(
                onPressedLoginWithGoogle: () {
                  context.read<LoginCubit>().emitLoginWithGoogle(context);
                },
              ),
              LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
