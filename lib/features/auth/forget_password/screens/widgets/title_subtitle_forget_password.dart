import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/my_colors.dart';
import '../../../../../core/constants/my_strings.dart';
import '../../../../../core/helpers/my_helpers_functions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/custom_themes/my_font_weight.dart';

class TitleSubtitleForgetPassword extends StatelessWidget {
  const TitleSubtitleForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          MyStrings.titleForgetPassword,
          style: TextStyle(
            fontSize: 26.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.semiBold,
          ),
        ),
        verticalSpace(10),
        Text(
          MyStrings.subtitleForgetPassword,
          style: TextStyle(
            fontSize: 12.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.regular,
          ),
        ),
        verticalSpace(32),
      ],
    );
  }
}
