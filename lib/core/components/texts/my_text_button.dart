import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/my_colors.dart';
import '../../theming/custom_themes/my_font_weight.dart';

class MyTextButton extends StatelessWidget {
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final double? borderRadius;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backgroundColor;

  const MyTextButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      this.textStyle,
      this.borderRadius,
      this.buttonWidth,
      this.buttonHeight,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),
        fixedSize: MaterialStateProperty.all(
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 48.h)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            vertical: verticalPadding?.h ?? 0.h,
            horizontal: horizontalPadding?.w ?? 0.w,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? MyColors.myPrimary,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle ?? TextStyle(
          color: MyColors.myWhite,
          fontSize: 21.sp,
          fontWeight: MyFontWeight.medium,
        ),
      ),
    );
  }
}
