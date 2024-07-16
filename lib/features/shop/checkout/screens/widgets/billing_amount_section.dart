import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal",
              style: TextStyle(
                fontSize: 16.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.regular,
              ),
            ),
            Text(
              "\$321.0",
              style: TextStyle(
                fontSize: 16.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.regular,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shipping Fee",
              style: TextStyle(
                fontSize: 16.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.regular,
              ),
            ),
            Text(
              "\$7.0",
              style: TextStyle(
                fontSize: 12.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.regular,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tax Fee",
              style: TextStyle(
                fontSize: 16.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.regular,
              ),
            ),
            Text(
              "\$7.0",
              style: TextStyle(
                fontSize: 12.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.regular,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order Total",
              style: TextStyle(
                fontSize: 16.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.medium,
              ),
            ),
            Text(
              "\$754.0",
              style: TextStyle(
                fontSize: 16.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.medium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
