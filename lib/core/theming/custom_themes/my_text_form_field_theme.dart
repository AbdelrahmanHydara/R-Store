import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';
import 'my_font_weight.dart';

class MyTextFormFieldTheme {
  MyTextFormFieldTheme._();

  static InputDecorationTheme lightTextFormFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MyColors.myGery,
    suffixIconColor: MyColors.myGery,
    labelStyle: const TextStyle(
      fontSize: 14,
      color: MyColors.myBlack,
    ),
    hintStyle: TextStyle(
      fontSize: 14,
      color: MyColors.myBlack,
    ),
    errorStyle: const TextStyle(
      fontWeight: MyFontWeight.regular,
      fontSize: 12,
    ),
    floatingLabelStyle: TextStyle(
      color: MyColors.myBlack.withOpacity(0.8),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: MyColors.myGery,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: MyColors.myGery,
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: MyColors.myBlack,
        width: 1,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: MyColors.myRed,
        width: 1,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: MyColors.myOrange,
        width: 2,
      ),
    ),
  );

  static InputDecorationTheme darkTextFormFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MyColors.myGery,
    suffixIconColor: MyColors.myGery,
    labelStyle: const TextStyle(
      fontSize: 14,
      color: MyColors.myWhite,
    ),
    hintStyle: const TextStyle(
      fontSize: 14,
      color: MyColors.myWhite,
    ),
    errorStyle: const TextStyle(
      fontWeight: MyFontWeight.regular,
      fontSize: 12,
    ),
    floatingLabelStyle: TextStyle(
      color: MyColors.myWhite.withOpacity(0.8),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: MyColors.myGery,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: MyColors.myGery,
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: MyColors.myWhite,
        width: 1,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: MyColors.myRed,
        width: 1,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: MyColors.myOrange,
        width: 2,
      ),
    ),
  );
}