import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/local/cache_helper.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return TextButton(
      onPressed: () {
        CacheHelper.savaData(key: "1", value: true).then((value) {
          if(value) {
            context.pushReplacementNamed(Routes.loginScreen);
          }
        });
      },
      child: Text(
        MyStrings.skip,
        style: TextStyle(
          fontSize: 24.sp,
          color: dark ? MyColors.myWhite : MyColors.myBlack,
          fontWeight: MyFontWeight.bold,
        ),
      ),
    );
  }
}
