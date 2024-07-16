import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';
import 'widgets/overall_product_rating.dart';
import 'widgets/user_reviews_card.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: _buildMyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ratings and reviews are verified and are from people who use the same type of device that you use.",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: dark ? MyColors.myWhite : MyColors.myBlack,
                  fontWeight: MyFontWeight.regular,
                ),
              ),
              verticalSpace(32),
              const OverallProductRating(),
              verticalSpace(32),
              const UserReviewsCard(),
            ],
          ),
        ),
      ),
    );
  }

  MyAppBar _buildMyAppBar() {
    return MyAppBar(
      showBackArrow: true,
      title: Text(
        "Reviews & Ratings",
      ),
    );
  }
}
