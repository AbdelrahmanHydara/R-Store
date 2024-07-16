import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';

class MyTextButtonTheme {
  MyTextButtonTheme._();

  static TextButtonThemeData lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: MyColors.myBlack,
      textStyle: TextStyle(
        fontSize: 18,
      ),
    ),
  );

  static TextButtonThemeData darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: MyColors.myWhite,
      textStyle: TextStyle(
        fontSize: 18,
      ),
    ),

  );
}