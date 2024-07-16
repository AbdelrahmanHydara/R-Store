import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/my_colors.dart';
import '../../../../../core/constants/my_images.dart';
import '../../../../../core/constants/my_strings.dart';
import '../../../../../core/helpers/my_helpers_functions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/custom_themes/my_font_weight.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(32),
        Image.asset(
          MyImages.logo,
          height: 121.h,
        ),
        verticalSpace(10),
        Text(
          MyStrings.welcomeBack,
          style: TextStyle(
            fontSize: 26.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.semiBold,
          ),
        ),
        verticalSpace(8),
        Text(
          MyStrings.subtitleLogin,
          style: TextStyle(
            fontSize: 12.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.regular,
          ),
        ),
      ],
    );
  }
}
