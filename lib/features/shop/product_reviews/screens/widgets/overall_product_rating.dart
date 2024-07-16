import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'rating_progress_indicator.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            "4.5",
            style: TextStyle(
              fontSize: 70.sp,
              color: dark ? MyColors.myWhite : MyColors.myBlack,
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Column(
            children: [
              RatingProgressIndicator(
                text: "5",
                value: 1,
              ),
              RatingProgressIndicator(
                text: "4",
                value: .6,
              ),
              RatingProgressIndicator(
                text: "3",
                value: .4,
              ),
              RatingProgressIndicator(
                text: "2",
                value: .3,
              ),
              RatingProgressIndicator(
                text: "1",
                value: .1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
