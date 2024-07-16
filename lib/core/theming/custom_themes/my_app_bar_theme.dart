import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants/my_colors.dart';
import 'my_font_weight.dart';

class MyAppBarTheme {
  MyAppBarTheme._();

  /// Light App Bar Theme
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      size: 24,
      color: MyColors.myBlack,
    ),
    actionsIconTheme: IconThemeData(
      size: 24,
      color: MyColors.myBlack,
    ),
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: MyFontWeight.semiBold,
      color: MyColors.myBlack,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );

  /// Dark App Bar Theme
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      size: 24,
      color: MyColors.myWhite,
    ),
    actionsIconTheme: IconThemeData(
      size: 24,
      color: MyColors.myWhite,
    ),
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: MyFontWeight.semiBold,
      color: MyColors.myWhite,
    ),
    // systemOverlayStyle: SystemUiOverlayStyle(
    //   statusBarIconBrightness: Brightness.light,
    //   statusBarColor: MyColors.myDark,
    // ),
  );
}