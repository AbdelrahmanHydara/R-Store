import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';
import 'my_font_weight.dart';

class MyTextTheme {
  MyTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    // Head line
    headlineLarge: const TextStyle(
      fontSize: 32,
      color: MyColors.myBlack,
      fontWeight: MyFontWeight.bold,
    ),
    headlineMedium: const TextStyle(
      fontSize: 28,
      color: MyColors.myBlack,
      fontWeight: MyFontWeight.semiBold,
    ),
    headlineSmall: const TextStyle(
      fontSize: 22,
      color: MyColors.myBlack,
      fontWeight: MyFontWeight.semiBold,
    ),
    // Title
    titleLarge: const TextStyle(
      fontSize: 16,
      color: MyColors.myBlack,
      fontWeight: MyFontWeight.semiBold,
    ),
    titleMedium: const TextStyle(
      fontSize: 16,
      color: MyColors.myBlack,
      fontWeight: MyFontWeight.medium,
    ),
    titleSmall: const TextStyle(
      fontSize: 16,
      color: MyColors.myBlack,
      fontWeight: MyFontWeight.regular,
    ),
    // Body
    bodyLarge: const TextStyle(
      fontSize: 16,
      color: MyColors.myBlack,
      fontWeight: MyFontWeight.medium,
    ),
    bodyMedium: const TextStyle(
      fontSize: 16,
      color: MyColors.myBlack,
      fontWeight: MyFontWeight.regular,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      color: MyColors.myBlack.withOpacity(0.5),
      fontWeight: MyFontWeight.medium,
    ),
    // Label
    labelLarge: const TextStyle(
      fontSize: 12,
      color: MyColors.myBlack,
      fontWeight: MyFontWeight.regular,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      color: MyColors.myBlack.withOpacity(0.5),
      fontWeight: MyFontWeight.regular,
    ),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme =  TextTheme(
    // Head line
    headlineLarge: const TextStyle(
      fontSize: 32,
      color: MyColors.myWhite,
      fontWeight: MyFontWeight.bold,
    ),
    headlineMedium: const TextStyle(
      fontSize: 24,
      color: MyColors.myWhite,
      fontWeight: MyFontWeight.semiBold,
    ),
    headlineSmall: const TextStyle(
      fontSize: 18,
      color: MyColors.myWhite,
      fontWeight: MyFontWeight.semiBold,
    ),
    // Title
    titleLarge: const TextStyle(
      fontSize: 16,
      color: MyColors.myWhite,
      fontWeight: MyFontWeight.semiBold,
    ),
    titleMedium: const TextStyle(
      fontSize: 16,
      color: MyColors.myWhite,
      fontWeight: MyFontWeight.medium,
    ),
    titleSmall: const TextStyle(
      fontSize: 16,
      color: MyColors.myWhite,
      fontWeight: MyFontWeight.regular,
    ),
    // Body
    bodyLarge: const TextStyle(
      fontSize: 16,
      color: MyColors.myWhite,
      fontWeight: MyFontWeight.medium,
    ),
    bodyMedium: const TextStyle(
      fontSize: 16,
      color: MyColors.myWhite,
      fontWeight: MyFontWeight.regular,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      color: MyColors.myWhite.withOpacity(0.5),
      fontWeight: MyFontWeight.medium,
    ),
    // Label
    labelLarge: const TextStyle(
      fontSize: 12,
      color: MyColors.myWhite,
      fontWeight: MyFontWeight.regular,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      color: MyColors.myWhite.withOpacity(0.5),
      fontWeight: MyFontWeight.regular,
    ),
  );
}
