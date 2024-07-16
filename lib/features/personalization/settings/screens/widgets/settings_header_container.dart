import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/helpers/extensions.dart';
import '../../../../../core/components/custom_shapes/my_primary_header_container.dart';
import '../../../../../core/components/list_tiles/user_profile_title.dart';
import '../../../../../core/constants/my_colors.dart';
import '../../../../../core/constants/my_strings.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/custom_themes/my_font_weight.dart';

class SettingsHeaderContainer extends StatelessWidget {
  const SettingsHeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPrimaryHeaderContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SettingsAppBar(),
          verticalSpace(38),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 24.w,
            ),
            child: Text(
              MyStrings.settingsAppBarTitle,
              style: TextStyle(
                fontSize: 24.sp,
                color: MyColors.myWhite,
                fontWeight: MyFontWeight.semiBold,
              ),
            ),
          ),
          verticalSpace(8),
          UserProfileTile(
            onTap: () {
              context.pushNamed(Routes.profileScreen);
            },
          ),
          verticalSpace(32),
        ],
      ),
    );
  }
}
