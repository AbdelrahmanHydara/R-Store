import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/components/auth/my_text_form_field.dart';
import 'package:r_store/core/components/auth/password_validations.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/my_regex.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/helpers/validation.dart';
import 'package:r_store/features/auth/login/cubit/login_cubit.dart';

class FormFieldLogin extends StatefulWidget {
  const FormFieldLogin({super.key});

  @override
  State<FormFieldLogin> createState() => _FormFieldLoginState();
}

class _FormFieldLoginState extends State<FormFieldLogin> {
  late TextEditingController _passwordController;
  bool _hasLowerCase = false;
  bool _hasMinLength = false;
  bool _hasNumber = false;
  bool _hasSpecialCharacters = false;
  bool _hasUpperCase = false;
  bool _isPasswordObscureText = true;

  @override
  void initState() {
    super.initState();
    _passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    _passwordController.addListener(() {
      setState(() {
        _hasLowerCase = MyRegex.hasLowerCase(_passwordController.text);
        _hasUpperCase = MyRegex.hasUpperCase(_passwordController.text);
        _hasSpecialCharacters = MyRegex.hasSpecialCharacter(_passwordController.text);
        _hasNumber = MyRegex.hasNumber(_passwordController.text);
        _hasMinLength = MyRegex.hasMinLength(_passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key:  context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          verticalSpace(30),
          MyTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: MyStrings.email,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icons.email_outlined,
            validator: (value) => MyValidation.validateEmail(value!),
          ),
          verticalSpace(16),
          MyTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: MyStrings.password,
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: Icons.lock_outline,
            obscureText: _isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _isPasswordObscureText = !_isPasswordObscureText;
                });
              },
              child: Icon(
                _isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) => MyValidation.validatePassword(value!),
          ),
          verticalSpace(16),
          PasswordValidations(
            hasLowerCase: _hasLowerCase,
            hasMinLength: _hasMinLength,
            hasSpecialCharacters: _hasSpecialCharacters,
            hasNumber: _hasNumber,
            hasUpperCase: _hasUpperCase,
          ),
          verticalSpace(16),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
  }
}
