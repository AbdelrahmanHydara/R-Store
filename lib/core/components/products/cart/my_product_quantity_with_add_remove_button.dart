import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/icons/my_circular_icon.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class MyProductQuantityWithAddRemoveButton extends StatelessWidget {
  const MyProductQuantityWithAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyCircularIcon(
          width: 32.w,
          height: 32.h,
          size: 16,
          color: dark ? MyColors.myWhite : MyColors.myBlack,
          backgroundColor: dark ? MyColors.darkerGery : MyColors.myLight,
          icon: Icons.minimize_outlined,
        ),
        horizontalSpace(16),
        Text(
          "2",
          style: TextStyle(
            fontSize: 16.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.regular,
          ),
        ),
        horizontalSpace(16),
        MyCircularIcon(
          width: 32.w,
          height: 32.h,
          size: 16,
          color: MyColors.myWhite,
          backgroundColor: MyColors.myPrimary,
          icon: Icons.add,
        ),
      ],
    );
  }
}
