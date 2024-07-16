import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/components/auth/my_text_form_field.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/helpers/validation.dart';
import 'package:r_store/features/personalization/profile/reauthenticate/cubit/re_auth_cubit.dart';

class ReAuthenticateScreen extends StatefulWidget {
  const ReAuthenticateScreen({super.key});

  @override
  State<ReAuthenticateScreen> createState() => _ReAuthenticateScreenState();
}

class _ReAuthenticateScreenState extends State<ReAuthenticateScreen> {
  bool _isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReAuthCubit(),
      child: BlocConsumer<ReAuthCubit, ReAuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: MyAppBar(
              title: Text(
                "Re-Authenticate User",
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: context.read<ReAuthCubit>().formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyTextFormField(
                        controller: context.read<ReAuthCubit>().verifyEmail,
                        hintText: MyStrings.email,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.email_outlined,
                        validator: (value) =>
                            MyValidation.validateEmail(value!),
                      ),
                      verticalSpace(16),
                      MyTextFormField(
                        controller: context.read<ReAuthCubit>().verifyPassword,
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
                            _isPasswordObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        validator: (value) =>
                            MyValidation.validatePassword(value!),
                      ),
                      verticalSpace(32),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {

                            },
                            child: Text(
                              'Verify',
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
