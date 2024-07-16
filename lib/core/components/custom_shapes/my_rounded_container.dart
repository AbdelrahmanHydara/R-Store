import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';

class MyRoundedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Color borderColor;
  final Color backgroundColor;
  final Widget? child;
  final bool showBorder;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const MyRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.child,
    this.padding,
    this.margin,
    this.radius = 16,
    this.showBorder = false,
    this.backgroundColor = MyColors.myWhite,
    this.borderColor = MyColors.gery,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
