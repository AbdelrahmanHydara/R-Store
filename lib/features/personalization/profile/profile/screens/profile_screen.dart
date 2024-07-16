import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/personalization/settings/cubit/user_cubit.dart';
import 'widgets/custom_profile_image.dart';
import 'widgets/profile_bloc_listener.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: Scaffold(
        appBar: _buildMyAppBar(),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if(context.read<UserCubit>().userModel == null)
              return const Center(child: CircularProgressIndicator());
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 20.h,
                ),
                child: Column(
                  children: [
                    const CustomProfileImage(),
                    _buildSectionProfile(),
                    ProfileMenu(
                      title: MyStrings.profileName,
                      value:
                          "${context.read<UserCubit>().userModel!.fullName}",
                      onTap: () {
                        context.pushNamed(Routes.changeNameScreen);
                      },
                    ),
                    ProfileMenu(
                      title: MyStrings.profileUsername,
                      value:
                          "${context.read<UserCubit>().userModel?.userName}",
                      onTap: () {},
                    ),
                    _buildSectionPersonal(),
                    ProfileMenu(
                      title: MyStrings.profileID,
                      value: "${context.read<UserCubit>().userModel?.id}",
                      icon: Icons.copy,
                      onTap: () {},
                    ),
                    ProfileMenu(
                      title: MyStrings.profileEmail,
                      value:
                          "${context.read<UserCubit>().userModel?.email}",
                      onTap: () {},
                    ),
                    ProfileMenu(
                      title: MyStrings.profilePhone,
                      value:
                          "${context.read<UserCubit>().userModel?.phone}",
                      onTap: () {},
                    ),
                    ProfileMenu(
                      title: MyStrings.profileGender,
                      value: 'Male',
                      onTap: () {},
                    ),
                    ProfileMenu(
                      title: MyStrings.profileDate,
                      value: '21 Oct, 2007',
                      onTap: () {},
                    ),
                    const Divider(),
                    verticalSpace(16),
                    const ProfileBlocListener(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Column _buildSectionProfile() {
    return Column(
      children: [
        verticalSpace(8),
        const Divider(),
        verticalSpace(16),
        MySectionHeading(
          title: MyStrings.profileSubtitle,
        ),
        verticalSpace(16),
      ],
    );
  }
  Column _buildSectionPersonal() {
    return Column(
      children: [
        verticalSpace(16),
        const Divider(),
        verticalSpace(16),
        MySectionHeading(
          title: MyStrings.profilePersonal,
        ),
        verticalSpace(16),
      ],
    );
  }
  MyAppBar _buildMyAppBar() {
    return MyAppBar(
      showBackArrow: true,
      title: Text(
        MyStrings.profileAppBar,
      ),
    );
  }
}
