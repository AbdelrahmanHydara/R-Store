import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/my_colors.dart';
import '../../../../../core/helpers/my_helpers_functions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/custom_themes/my_font_weight.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              size: 24,
              color: Colors.amber,
            ),
            horizontalSpace(8),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "5.0 ",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: dark ? MyColors.myWhite : MyColors.myBlack,
                      fontWeight: MyFontWeight.medium,
                    ),
                  ),
                  TextSpan(
                    text: "(121)",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: dark
                          ? MyColors.myWhite.withOpacity(.7)
                          : MyColors.myBlack.withOpacity(.7),
                      fontWeight: MyFontWeight.medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.share,
            size: 24,
          ),
        ),
      ],
    );
  }
}
