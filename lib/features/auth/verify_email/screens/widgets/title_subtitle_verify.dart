import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class TitleSubtitleVerify extends StatelessWidget {

  final String? email;

  TitleSubtitleVerify({super.key, this.email});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        verticalSpace(32),
        Text(
          MyStrings.titleVerify,
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
          MyStrings.subtitleVerify,
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
