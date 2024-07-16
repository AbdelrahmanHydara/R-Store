import 'package:flutter/material.dart';
import 'package:r_store/core/constants/my_colors.dart';

class MyDropdownMenuTheme {
  MyDropdownMenuTheme._();

  static DropdownMenuThemeData lightDropdownMenuTheme = DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(
          color: MyColors.gery,
          width: 1,
        ),
      ),
    ),
  );

  static DropdownMenuThemeData darkDropdownMenuTheme = DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(
          color: MyColors.myWhite,
          width: 1,
        ),
      ),
    ),
  );
}