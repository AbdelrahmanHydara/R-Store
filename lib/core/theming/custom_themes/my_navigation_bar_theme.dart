import 'package:flutter/material.dart';
import 'package:r_store/core/constants/my_colors.dart';

class MyNavigationBarTheme {
  MyNavigationBarTheme._();

  static NavigationBarThemeData lightNavigationBarTheme = NavigationBarThemeData(
    elevation: 0,
    height: 80,
    indicatorColor: MyColors.myDark.withOpacity(.1),
    backgroundColor: MyColors.myWhite,
  );

  static NavigationBarThemeData darkNavigationBarTheme = NavigationBarThemeData(
    elevation: 0,
    height: 80,
    indicatorColor: MyColors.myLight.withOpacity(.1),
    backgroundColor: MyColors.myDark,
  );
}
