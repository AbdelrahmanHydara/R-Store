import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class UserReviewsCard extends StatelessWidget {
  const UserReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/google_logo.png"),
                ),
                horizontalSpace(16),
                Text(
                  "Google",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: dark ? MyColors.myWhite : MyColors.myBlack,
                    fontWeight: MyFontWeight.semiBold,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
              ),
            ),
          ],
        ),
        verticalSpace(16),
        Row(
          children: [
            Text(
              "Rating",
            ),
            horizontalSpace(16),
            Text(
              "01 Nov, 2024",
              style: TextStyle(
                fontSize: 16.sp,
                color: dark ? MyColors.myWhite : MyColors.myBlack,
                fontWeight: MyFontWeight.regular,
              ),
            ),
          ],
        ),
        verticalSpace(16),
      ],
    );
  }
}
