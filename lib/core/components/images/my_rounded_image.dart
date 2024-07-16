import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:r_store/core/components/shimmer/my_shimmer_effect.dart';

class MyRoundedImage extends StatelessWidget {
  final double? width;
  final double? height;
  final String image;
  final bool applyImageRadius;
  final BoxBorder? border;
  final BoxFit? fit;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final bool isNetworkImage;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final double cachedNetworkImageWidth;
  final double cachedNetworkImageHeight;

  const MyRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.image,
    this.applyImageRadius = true,
    this.border,
    this.fit = BoxFit.contain,
    this.backgroundColor = Colors.transparent,
    this.onPressed,
    this.isNetworkImage = false,
    this.padding,
    this.borderRadius = 16,
    this.cachedNetworkImageWidth = 55,
    this.cachedNetworkImageHeight = 55,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        margin: const EdgeInsetsDirectional.only(start: 10),
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: isNetworkImage
              ? CachedNetworkImage(
                  fit: fit,
                  imageUrl: image,
                  progressIndicatorBuilder: (context, url, downloadProgress) => MyShimmerEffect(
                    width: cachedNetworkImageWidth,
                    height: cachedNetworkImageHeight,
                  ),
                  errorWidget: (context, url, downloadProgress) => const Icon(Icons.error_outline_outlined),
                )
              : Image(
                  image: AssetImage(image),
                  fit: fit,
                ),
        ),
      ),
    );
  }
}
