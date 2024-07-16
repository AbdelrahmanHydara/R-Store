import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/my_colors.dart';
import '../../../../../core/constants/my_strings.dart';
import '../../../../../core/helpers/my_helpers_functions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/custom_themes/my_font_weight.dart';

class TitleSubtitleResetPassword extends StatelessWidget {
  final String? email;
  const TitleSubtitleResetPassword({super.key, this.email});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        verticalSpace(32),
        Text(
          MyStrings.titleResetPassword,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.semiBold,
          ),
        ),
        verticalSpace(16),
        Text(
          email??"",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.regular,
          ),
        ),
        verticalSpace(16),
        Text(
          MyStrings.subtitleResetPassword,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12.sp,
            color: dark ? MyColors.myWhite.withOpacity(0.5) : MyColors.myBlack.withOpacity(0.5),
            fontWeight: MyFontWeight.regular,

          ),
        ),
        verticalSpace(32),
      ],
    );
  }
}
