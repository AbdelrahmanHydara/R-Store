import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/shimmer/my_shimmer_effect.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class MyVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  final bool isNetworkImage;

  const MyVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = MyColors.myWhite,
    this.isNetworkImage = false,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 55.w,
              height: 55.h,
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 8.h,
              ),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (dark ? MyColors.myDark : MyColors.myLight),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: isNetworkImage
                    ? CachedNetworkImage(
                        fit: BoxFit.cover,
                        color: dark ? MyColors.myLight : MyColors.myDark,
                        imageUrl: image,
                        progressIndicatorBuilder: (context, url, downloadProgress) => const MyShimmerEffect(width: 55, height: 55,),
                        errorWidget: (context, url, downloadProgress) => const Icon(Icons.error_outline_outlined),
                      )
                    : Image(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                        color: dark ? MyColors.myLight : MyColors.myDark,
                      ),
              ),
            ),
            verticalSpace(8),
            SizedBox(
              width: 55.w,
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: textColor,
                  fontWeight: MyFontWeight.regular,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
