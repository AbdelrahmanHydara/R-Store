import 'package:flutter/material.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:shimmer/shimmer.dart';

class MyShimmerEffect extends StatelessWidget {
  final double width,height,radius;
  final Color? color;

  const MyShimmerEffect({
    super.key,
    this.width = 20,
    this.height = 10,
    this.radius = 18,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[800]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[600]! : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (dark ? MyColors.darkerGery : MyColors.myWhite),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
