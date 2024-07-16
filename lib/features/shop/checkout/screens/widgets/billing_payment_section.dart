import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/custom_shapes/my_rounded_container.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        MySectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          showActionButton: true,
          onPressed: () {},
        ),
        Row(
          children: [
            MyRoundedContainer(
              width: 60.w,
              height: 35.h,
              padding: const EdgeInsetsDirectional.all(8),
              backgroundColor: dark ? MyColors.myLight : MyColors.myWhite,
              child: Image(
                image: AssetImage("assets/images/facebook_logo.png"),
                fit: BoxFit.contain,
              ),
            ),
            horizontalSpace(8),
            Text(
              "PayPal",
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
