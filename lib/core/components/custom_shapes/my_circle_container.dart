import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/my_colors.dart';

class MyCircleContainer extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Color color;
  final Widget? child;

  const MyCircleContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.color = MyColors.myWhite,
    this.radius = 400,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
