import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class RatingProgressIndicator extends StatelessWidget {
  final String text;
  final double value;

  const RatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              color: dark ? MyColors.myWhite : MyColors.myBlack,
              fontWeight: MyFontWeight.regular,
            ),
          ),
        ),
        Expanded(
          flex: 11,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 10.h,
            backgroundColor: MyColors.gery,
            valueColor: const AlwaysStoppedAnimation(
              MyColors.myPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
