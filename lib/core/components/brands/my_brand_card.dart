import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_shapes/my_rounded_container.dart';
import '../images/my_circular_image.dart';
import '../texts/my_brand_title_text_and_verified_icon.dart';
import '../../constants/my_colors.dart';
import '../../helpers/enums.dart';
import '../../helpers/my_helpers_functions.dart';
import '../../helpers/spacing.dart';
import '../../theming/custom_themes/my_font_weight.dart';

class MyBrandCard extends StatelessWidget {
  final bool showBorder;
  final void Function()? onTap;

  const MyBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: MyRoundedContainer(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 8.w,
          vertical: 8.h,
        ),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            MyCircularImage(
              image: 'assets/images/google_logo.png',
              backgroundColor: Colors.transparent,
              overlayColor: dark ? MyColors.myWhite : MyColors.myBlack,
            ),
            horizontalSpace(8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyBrandTitleTextAndVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  verticalSpace(4),
                  Text(
                    "212 products",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: dark
                          ? MyColors.myWhite.withOpacity(0.5)
                          : MyColors.myBlack.withOpacity(0.5),
                      fontWeight: MyFontWeight.regular,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
