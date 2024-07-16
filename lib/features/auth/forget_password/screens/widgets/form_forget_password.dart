import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/components/auth/my_text_form_field.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/helpers/validation.dart';
import 'package:r_store/features/auth/forget_password/cubit/forget_password_cubit.dart';

class FormForgetPassword extends StatelessWidget {
  const FormForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgetPasswordCubit>().formKey,
      child: Column(
        children: [
          MyTextFormField(
            controller: context.read<ForgetPasswordCubit>().emailController,
            hintText: MyStrings.email,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icons.send_outlined,
            validator: (value) => MyValidation.validateEmail(value!),
          ),
          verticalSpace(32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if(context.read<ForgetPasswordCubit>().formKey.currentState!.validate()) {
                  context.read<ForgetPasswordCubit>().emitSendPasswordEmail();
                }
              },
              child: Text(
                MyStrings.submit,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
