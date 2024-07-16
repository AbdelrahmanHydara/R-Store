import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';
import 'my_font_weight.dart';

/// Light & Dark Elevate Button Theme
class MyElevatedButtonTheme {
  MyElevatedButtonTheme._();

  /// Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.myWhite,
      backgroundColor: MyColors.myPrimary,
      disabledForegroundColor: MyColors.myGery,
      disabledBackgroundColor: MyColors.myGery,
      side: const BorderSide(
        color: MyColors.myPrimary,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 18,
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: MyFontWeight.semiBold,
        color: MyColors.myWhite,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  /// Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.myWhite,
      backgroundColor: MyColors.myPrimary,
      disabledForegroundColor: MyColors.myGery,
      disabledBackgroundColor: MyColors.myGery,
      side:  const BorderSide(
        color: MyColors.myPrimary,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 18,
      ),
      textStyle:  const TextStyle(
        fontSize: 16,
        fontWeight: MyFontWeight.semiBold,
        color: MyColors.myWhite,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}