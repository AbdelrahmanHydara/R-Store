import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';
import 'my_font_weight.dart';

class MyOutlinedButtonTheme {
  MyOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.myBlack,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      side: const BorderSide(
        color: MyColors.gery,
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        color: MyColors.myBlack,
        fontWeight: MyFontWeight.semiBold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.myWhite,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      side: const BorderSide(
        color: MyColors.myWhite,
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        color: MyColors.myWhite,
        fontWeight: MyFontWeight.semiBold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
}