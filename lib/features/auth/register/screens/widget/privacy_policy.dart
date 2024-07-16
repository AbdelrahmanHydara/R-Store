import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: MyStrings.iAgreeTo,
            style: TextStyle(
              fontSize: 16.sp,
              color: dark ?
              MyColors.myWhite.withOpacity(0.5) :
              MyColors.myBlack.withOpacity(0.5),
              fontWeight: MyFontWeight.medium,
            ),
          ),
          TextSpan(
            text: MyStrings.termsOfUse,
            style: TextStyle(
              fontSize: 16.sp,
              color: dark ? MyColors.myWhite : MyColors.myPrimary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? MyColors.myWhite : MyColors.myPrimary,
              fontWeight: MyFontWeight.regular,
            ),
          ),
          TextSpan(
            text: MyStrings.and,
            style: TextStyle(
              fontSize: 16.sp,
              color: dark ? MyColors.myWhite.withOpacity(0.5) : MyColors
                  .myBlack.withOpacity(0.5),
              fontWeight: MyFontWeight.medium,
            ),
          ),
          TextSpan(
            text: MyStrings.privacyPolicy,
            style: TextStyle(
              fontSize: 16.sp,
              color: dark ? MyColors.myWhite : MyColors.myPrimary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? MyColors.myWhite : MyColors.myPrimary,
              fontWeight: MyFontWeight.regular,
            ),
          ),
        ],
      ),
    );
  }
}
