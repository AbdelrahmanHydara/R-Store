import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/helpers/spacing.dart';
import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';
import '../custom_shapes/my_rounded_container.dart';
import 'my_brand_card.dart';

class MyBrandShowcase extends StatelessWidget {
  final List<String> images;

  const MyBrandShowcase({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      showBorder: true,
      borderColor: MyColors.darkGery,
      backgroundColor: Colors.transparent,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 10.w,
        vertical: 8.h,
      ),
      margin: const EdgeInsetsDirectional.only(
          bottom: 16,
      ),
      child: Column(
          children: [
        const MyBrandCard(
          showBorder: false,
        ),
        verticalSpace(16),
        Row(
          children: images
              .map((image) => brandTopProductImageWidget(image, context))
              .toList(),
        ),
          ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: MyRoundedContainer(
        height: 100.h,
        backgroundColor: MyHelperFunctions.isDarkMode(context)
            ? MyColors.darkerGery
            : MyColors.myLight,
        margin: const EdgeInsetsDirectional.only(
          start: 10,
        ),
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 8.w,
          vertical: 8.h,
        ),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
