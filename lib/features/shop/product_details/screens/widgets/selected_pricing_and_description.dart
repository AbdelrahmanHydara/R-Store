import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/custom_shapes/my_rounded_container.dart';
import 'package:r_store/core/components/texts/my_product_price_text.dart';
import 'package:r_store/core/components/texts/my_product_title_text.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class SelectedPricingAndDescription extends StatelessWidget {
  const SelectedPricingAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      backgroundColor: dark ? MyColors.darkerGery : MyColors.gery,
      child: Column(
        /// Title, Price and Stock Status
        children: [
          Row(
            children: [
              Text(
                "Variation :",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: dark ? MyColors.myWhite : MyColors.myBlack,
                  fontWeight: MyFontWeight.semiBold,
                ),
              ),
              horizontalSpace(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      MyProductTitleText(
                        title: "Price : ",
                        smallSize: true,
                      ),
                      /// Actual Price
                      Text(
                        "\$25",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 16.sp,
                          color: dark ? MyColors.myWhite : MyColors.myBlack,
                          fontWeight: MyFontWeight.regular,
                        ),
                      ),
                      horizontalSpace(16),
                      /// Sale Price
                      MyProductPriceText(
                        price: "20",
                      ),
                    ],
                  ),
                  /// Stock
                  Row(
                    children: [
                      MyProductTitleText(
                        title: "Stock : ",
                        smallSize: true,
                      ),
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

                ],
              ),
            ],
          ),
          /// Variation Description
          MyProductTitleText(
            title: "This is the Description of the Product and it can go up to max 4 lines.",
            smallSize: true,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
