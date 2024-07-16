import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/components/SnackBar/my_snack_bar.dart';
import 'package:r_store/core/components/auth/my_text_form_field.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/helpers/validation.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/personalization/profile/change_name/cubit/update_name_cubit.dart';

class FormUpdateName extends StatelessWidget {
  const FormUpdateName({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateNameCubit(),
      child: BlocConsumer<UpdateNameCubit, UpdateNameState>(
        listener: (context, state) {
          if(state is UpdateUserNameLoading) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: MyColors.myPrimary,
                ),
              ),
            );
          }
          if(state is UpdateUserNameSuccess) {
            MySnackBar.success(text: "Your Name has been update", context: context);
            context.pushReplacementNamed(Routes.navigationMenuScreen);
         }
        },
        builder: (context, state) {
          return Form(
            key: context.read<UpdateNameCubit>().formKey,
            child: Column(
              children: [
                MyTextFormField(
                  controller: context.read<UpdateNameCubit>().firstName,
                  validator: (value) => MyValidation.validateEmptyText(value!, "First Name"),
                  hintText: "First Name",
                  prefixIcon: Icons.person_outlined,
                  keyboardType: TextInputType.name,
                ),
                verticalSpace(16),
                MyTextFormField(
                  controller: context.read<UpdateNameCubit>().lastName,
                  validator: (value) => MyValidation.validateEmptyText(value!, "Last Name"),
                  hintText: "Last Name",
                  prefixIcon: Icons.person_outlined,
                  keyboardType: TextInputType.name,
                ),
                verticalSpace(32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if(context.read<UpdateNameCubit>().formKey.currentState!.validate()) {
                        context.read<UpdateNameCubit>().emitUpdateUserName();
                      }
                    },
                    child: Text(
                      "Save",
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
