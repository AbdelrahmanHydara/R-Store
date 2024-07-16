import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          showActionButton: true,
          onPressed: () {},
        ),
        Text(
          "Abdelrahman Nasser",
          style: TextStyle(
            fontSize: 16.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.medium,
          ),
        ),
        verticalSpace(8),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: MyColors.myGery,
              size: 16,
            ),
            horizontalSpace(16),
            Text(
              "+201145687452",
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
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: MyColors.myGery,
              size: 16,
            ),
            horizontalSpace(16),
            Text(
              "Tanta, Egypt",
              softWrap: true,
              style: TextStyle(
                fontSize: 16.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.regular,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
