import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/components/auth/my_form_divider.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/features/auth/register/cubit/register_cubit.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(28),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if(context.read<RegisterCubit>().formKey.currentState!.validate()) {
                context.read<RegisterCubit>().emitRegisterState();
              }
            },
            child: const Text(
              MyStrings.createAccount,
            ),
          ),
        ),
        verticalSpace(28),
        const MyFormDivider(
          dividerText: MyStrings.orSignUpWith,
        ),
      ],
    );
  }
}
