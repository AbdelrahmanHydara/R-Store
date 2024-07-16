import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/icons/my_circular_icon.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: dark ? MyColors.darkerGery: MyColors.myLight,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              MyCircularIcon(
                width: 40.w,
                height: 40.h,
                color: MyColors.myWhite,
                backgroundColor: MyColors.darkGery,
                icon: Icons.minimize_rounded,
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
                width: 40.w,
                height: 40.h,
                color: MyColors.myWhite,
                backgroundColor: MyColors.myDark,
                icon: Icons.add,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: MyColors.myDark,
              ),
              padding: EdgeInsets.all(16),
              backgroundColor: MyColors.myDark,
            ),
            child: Text(
                "Add to Cart",
              ),
          ),
        ],
      ),
    );
  }
}
