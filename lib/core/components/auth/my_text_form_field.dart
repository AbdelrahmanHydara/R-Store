import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';
import '../../theming/custom_themes/my_font_weight.dart';

class MyTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final bool? obscureText;
  final TextStyle? style;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final Function(String?) validator;

  const MyTextFormField({
    super.key,
    this.contentPadding,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.style,
    this.controller,
    required this.validator,
    required this.keyboardType,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return TextFormField(
      controller: controller,
      style: style ??
          TextStyle(
            fontSize: 14.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.medium,
          ),
      obscureText: obscureText ?? false,
      validator: (value) => validator(value),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: dark ? MyColors.myDark : MyColors.myWhite,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: Icon(
          prefixIcon,
        ),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
      ),
    );
  }
}
