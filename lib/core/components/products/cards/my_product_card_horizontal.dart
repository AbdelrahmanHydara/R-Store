import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/custom_shapes/my_rounded_container.dart';
import 'package:r_store/core/components/icons/my_circular_icon.dart';
import 'package:r_store/core/components/images/my_rounded_image.dart';
import 'package:r_store/core/components/texts/my_brand_title_text_and_verified_icon.dart';
import 'package:r_store/core/components/texts/my_product_price_text.dart';
import 'package:r_store/core/components/texts/my_product_title_text.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class MyProductCardHorizontal extends StatelessWidget {
  const MyProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: 310.w,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: dark ? MyColors.darkerGery : MyColors.mySoftGery,
      ),
      child: Row(
        children: [
          /// Thumbnail
          MyRoundedContainer(
            height: 110.h,
            padding: const EdgeInsets.all(8),
            backgroundColor: dark ? MyColors.myDark : MyColors.myWhite,
            child: Stack(
              children: [
                SizedBox(
                  width: 120.w,
                  height: 120.h,
                  child: MyRoundedImage(
                    applyImageRadius: true,
                    backgroundColor: Colors.transparent,
                    image: "assets/images/google_logo.png",
                  ),
                ),
                Positioned(
                  top: 10,
                  child: MyRoundedContainer(
                    radius: 8,
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    backgroundColor: MyColors.mySecondary.withOpacity(.8),
                    child: Text(
                      "25%",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: MyColors.myBlack,
                        fontWeight: MyFontWeight.regular,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: const MyCircularIcon(
                    icon: Icons.favorite,
                    color: MyColors.myRed,
                  ),
                ),
              ],
            ),
          ),
          /// Details
          Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 8,
              start: 8,
            ),
            child: SizedBox(
              width: 166.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyProductTitleText(
                    title: "Green Nike Half Sleeves Shirt",

                  ),
                  verticalSpace(8),
                  MyBrandTitleTextAndVerifiedIcon(
                    title: 'Nike',
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: MyProductPriceText(
                          price: "251",
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: MyColors.myDark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: SizedBox(
                          width: 32.w,
                          height: 32.h,
                          child: const Icon(
                            Icons.add,
                            color: MyColors.myWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
