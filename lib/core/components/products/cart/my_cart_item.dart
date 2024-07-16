import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/images/my_rounded_image.dart';
import 'package:r_store/core/components/texts/my_brand_title_text_and_verified_icon.dart';
import 'package:r_store/core/components/texts/my_product_title_text.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        MyRoundedImage(
          width: 60.w,
          height: 60.h,
          padding: EdgeInsets.all(8),
          backgroundColor: dark ? MyColors.darkerGery : MyColors.myLight,
          image: "assets/images/google_logo.png",
        ),
        horizontalSpace(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              MyBrandTitleTextAndVerifiedIcon(
                title: "Nike",
                textColor: dark ? MyColors.myWhite.withOpacity(.7) : MyColors.myBlack.withOpacity(.5),
              ),
              Flexible(
                child: MyProductTitleText(
                  title: "Black Sports Shoes",
                  maxLines: 1,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Color ",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: dark ? MyColors.myWhite.withOpacity(0.5) : MyColors.myBlack.withOpacity(.5),
                        fontWeight: MyFontWeight.medium,
                      ),
                    ),
                    TextSpan(
                      text: "Green ",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: dark ? MyColors.myWhite : MyColors.myBlack,
                        fontWeight: MyFontWeight.medium,
                      ),
                    ),
                    TextSpan(
                      text: "Size ",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: dark ? MyColors.myWhite.withOpacity(0.5) : MyColors.myBlack.withOpacity(.5),
                        fontWeight: MyFontWeight.medium,
                      ),
                    ),
                    TextSpan(
                      text: "UK 08",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: dark ? MyColors.myWhite : MyColors.myBlack,
                        fontWeight: MyFontWeight.medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
