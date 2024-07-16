import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/components/auth/my_text_form_field.dart';
import 'package:r_store/core/components/auth/password_validations.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/my_regex.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/helpers/validation.dart';
import 'package:r_store/features/auth/register/cubit/register_cubit.dart';

class FormFieldRegister extends StatefulWidget {
  const FormFieldRegister({super.key});

  @override
  State<FormFieldRegister> createState() => _FormFieldRegisterState();
}

class _FormFieldRegisterState extends State<FormFieldRegister> {
  bool _isPasswordObscureText = true;
  late TextEditingController _passwordController;
  bool _hasLowerCase = false;
  bool _hasMinLength = false;
  bool _hasNumber = false;
  bool _hasSpecialCharacters = false;
  bool _hasUpperCase = false;

  @override
  void initState() {
    super.initState();
    _passwordController = context.read<RegisterCubit>().passwordController;
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
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          verticalSpace(32),
          Row(
            children: [
              Expanded(
                child: MyTextFormField(
                  controller: context.read<RegisterCubit>().firstNameController,
                  hintText: MyStrings.firstname,
                  keyboardType: TextInputType.name,
                  prefixIcon: Icons.person_outlined,
                  validator: (value) =>
                      MyValidation.validateEmptyText(value!, "First Name"),
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: MyTextFormField(
                  controller: context.read<RegisterCubit>().lastNameController,
                  hintText: MyStrings.lastname,
                  keyboardType: TextInputType.name,
                  prefixIcon: Icons.person_outlined,
                  validator: (value) =>
                      MyValidation.validateEmptyText(value!, "Last Name"),
                ),
              ),
            ],
          ),
          verticalSpace(16),
          MyTextFormField(
            controller: context.read<RegisterCubit>().userNameController,
            hintText: MyStrings.username,
            keyboardType: TextInputType.name,
            prefixIcon: Icons.person_add_alt,
            validator: (value) =>
                MyValidation.validateEmptyText(value!, "Username"),
          ),
          verticalSpace(16),
          MyTextFormField(
            controller: context.read<RegisterCubit>().emailController,
            hintText: MyStrings.email,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icons.email_outlined,
            validator: (value) => MyValidation.validateEmail(value!),
          ),
          verticalSpace(16),
          MyTextFormField(
            controller: context.read<RegisterCubit>().phoneController,
            hintText: MyStrings.phone,
            keyboardType: TextInputType.phone,
            prefixIcon: Icons.phone,
            validator: (value) => MyValidation.validatePhone(value!),
          ),
          verticalSpace(16),
          MyTextFormField(
            controller: context.read<RegisterCubit>().passwordController,
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
