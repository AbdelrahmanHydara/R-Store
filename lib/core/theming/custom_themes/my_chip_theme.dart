import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';

class MyChipTheme {
  MyChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: MyColors.myGery.withOpacity(0.4),
    selectedColor: MyColors.myPrimary,
    checkmarkColor: MyColors.myWhite,
    labelStyle: const TextStyle(
      color: MyColors.myBlack,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 12,
    ),
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: MyColors.darkerGery,
    selectedColor: MyColors.myPrimary,
    checkmarkColor: MyColors.myWhite,
    labelStyle: TextStyle(
      color: MyColors.myWhite,
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 12,
    ),
  );
}