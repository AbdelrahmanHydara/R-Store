import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class CheckoutButtonAndDescription extends StatelessWidget {
  const CheckoutButtonAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        verticalSpace(32),
        /// Checkout Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {

            },
            child: Text("Checkout"),
          ),
        ),
        verticalSpace(32),
        /// Description
        MySectionHeading(
          title: "Description",
        ),
        verticalSpace(16),
        const Divider(),
        verticalSpace(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Reviews (121)",
              style: TextStyle(
                fontSize: 18.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.semiBold,
              ),
            ),
            IconButton(
              onPressed: () {
                context.pushNamed(Routes.productReviewsScreen);
              },
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 18,
              ),
            ),
          ],
        ),
        verticalSpace(16),
      ],
    );
  }
}
