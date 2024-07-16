import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/shimmer/my_shimmer_effect.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';

class MyCircularImage extends StatelessWidget {
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, horizontal, vertical;

  const MyCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 55,
    this.height = 55,
    this.horizontal = 8,
    this.vertical = 8,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: width.w,
      height: height.h,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: horizontal.w,
        vertical: vertical.h,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? MyColors.myDark : MyColors.myLight),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: isNetworkImage
            ? CachedNetworkImage(
                fit: fit,
                color: overlayColor,
                imageUrl: image,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    const MyShimmerEffect(
                  width: 55,
                  height: 55,
                ),
                errorWidget: (context, url, downloadProgress) =>
                    const Icon(Icons.error_outline_outlined),
              )
            : Image(
                image: AssetImage(image),
                fit: fit,
                color: overlayColor,
              ),
      ),
    );
  }
}
