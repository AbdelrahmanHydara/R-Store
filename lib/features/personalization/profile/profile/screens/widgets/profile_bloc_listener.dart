import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/components/SnackBar/my_snack_bar.dart';
import 'package:r_store/features/personalization/settings/cubit/user_cubit.dart';

class ProfileBlocListener extends StatelessWidget {
  const ProfileBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listener: (context, state) {
        if (state is UploadUserProfileImageSuccessState) {
          MySnackBar.success(
            text: "Your Profile Image has been updated!", context: context,);
        }
        if (state is UploadUserProfileImageErrorState) {
          MySnackBar.error(
              text: "Something went wrong ${state.error}", context: context);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
