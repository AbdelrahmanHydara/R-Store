import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';
import '../../theming/custom_themes/my_font_weight.dart';

class MyFormDivider extends StatelessWidget {
  final String dividerText;
  const MyFormDivider({super.key, required this.dividerText});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? MyColors.darkGery : MyColors.gery,
            thickness: 0.5,
            indent: 40.w,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: TextStyle(
            fontSize: 12.sp,
            color: dark
                ? MyColors.myWhite.withOpacity(0.5)
                : MyColors.myBlack.withOpacity(0.5),
            fontWeight: MyFontWeight.regular,
          ),
        ),
        Flexible(
          child: Divider(
            color: dark ? MyColors.darkGery : MyColors.gery,
            thickness: 0.5,
            indent: 5,
            endIndent: 40.w,
          ),
        ),
      ],
    );
  }
}
