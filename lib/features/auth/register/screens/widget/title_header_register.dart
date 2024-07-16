import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/my_colors.dart';
import '../../../../../core/constants/my_strings.dart';
import '../../../../../core/helpers/my_helpers_functions.dart';
import '../../../../../core/theming/custom_themes/my_font_weight.dart';

class TitleHeaderRegister extends StatelessWidget {
  const TitleHeaderRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Text(
      MyStrings.titleRegister,
      style: TextStyle(
        fontSize: 26.sp,
        color: dark ? MyColors.myWhite : MyColors.myBlack,
        fontWeight: MyFontWeight.semiBold,
      ),
    );
  }
}
