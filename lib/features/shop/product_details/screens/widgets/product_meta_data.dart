import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/custom_shapes/my_rounded_container.dart';
import 'package:r_store/core/components/texts/my_brand_title_text_and_verified_icon.dart';
import 'package:r_store/core/components/texts/my_product_title_text.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/enums.dart';
import 'package:r_store/core/helpers/spacing.dart';
import '../../../../../core/components/images/my_circular_image.dart';
import '../../../../../core/components/texts/my_product_price_text.dart';
import '../../../../../core/helpers/my_helpers_functions.dart';
import '../../../../../core/theming/custom_themes/my_font_weight.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            MyRoundedContainer(
              radius: 8,
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 4.h,
              ),
              backgroundColor: MyColors.mySecondary.withOpacity(0.8),
              child: Text(
                "25%",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: MyColors.myBlack,
                  fontWeight: MyFontWeight.regular,
                ),
              ),
            ),
            horizontalSpace(16),
            Text(
              "\$365",
              style: TextStyle(
                fontSize: 16.sp,
                decoration: TextDecoration.lineThrough,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.regular,
              ),
            ),
            horizontalSpace(8),
            Text(
              "-",
              style: TextStyle(
                fontSize: 16.sp,
                decoration: TextDecoration.lineThrough,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.regular,
              ),
            ),
            horizontalSpace(8),
            const MyProductPriceText(
              price: '250',
              isLarge: true,
            ),
          ],
        ),
        verticalSpace(10),
        MyProductTitleText(
          title: "Green Nike Sports Shirt",
        ),
        verticalSpace(10),
        Row(
          children: [
            MyProductTitleText(
              title: "Status",
            ),
            horizontalSpace(16),
            Text(
              "In Stock",
              style: TextStyle(
                fontSize: 16.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.medium,
              ),
            ),
          ],
        ),
        verticalSpace(10),
        Row(
          children: [
            MyCircularImage(
              width: 30.w,
              height: 30.h,
              overlayColor: dark ? MyColors.myWhite : MyColors.myBlack,
              image: "assets/images/google_logo.png",
            ),
            MyBrandTitleTextAndVerifiedIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
