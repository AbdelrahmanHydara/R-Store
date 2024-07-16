import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';

class MyCircularIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  const MyCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = 24,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null ? backgroundColor! :
        dark ? MyColors.myBlack.withOpacity(.9) : MyColors.myWhite.withOpacity(.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
