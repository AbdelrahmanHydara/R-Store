import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/components/auth/my_form_divider.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/auth/login/cubit/login_cubit.dart';

class SignInAndCreateAccount extends StatelessWidget {
  const SignInAndCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if(context.read<LoginCubit>().formKey.currentState!.validate()) {
                context.read<LoginCubit>().emitLoginState();
              }
            },
            child: Text(
            MyStrings.signIn,
          ),),
        ),
        verticalSpace(16),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: (){
              context.pushNamed(Routes.registerScreen);
            }, child: Text(
            MyStrings.createAccount,
          ),),
        ),
        verticalSpace(28),
        MyFormDivider(
          dividerText: MyStrings.orSignInWith,
        ),
      ],
    );
  }
}
