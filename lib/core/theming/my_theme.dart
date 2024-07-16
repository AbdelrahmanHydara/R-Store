import 'package:flutter/material.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'custom_themes/my_app_bar_theme.dart';
import 'custom_themes/my_bottom_sheet_theme.dart';
import 'custom_themes/my_checkbox_theme.dart';
import 'custom_themes/my_chip_theme.dart';
import 'custom_themes/my_dropdown_menu_theme.dart';
import 'custom_themes/my_elevated_button_theme.dart';
import 'custom_themes/my_navigation_bar_theme.dart';
import 'custom_themes/my_outlined_button_theme.dart';
import 'custom_themes/my_text_button_theme.dart';
import 'custom_themes/my_text_form_field_theme.dart';
import 'custom_themes/my_text_theme.dart';

class MyTheme {
  MyTheme._();

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: MyColors.myWhite,
    primaryColor: MyColors.myPrimary,
    brightness: Brightness.light,
    textTheme: MyTextTheme.lightTextTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    textButtonTheme: MyTextButtonTheme.lightTextButtonTheme,
    checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: MyTextFormFieldTheme.lightTextFormFieldTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    navigationBarTheme: MyNavigationBarTheme.lightNavigationBarTheme,
    dropdownMenuTheme: MyDropdownMenuTheme.lightDropdownMenuTheme,
  );

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: MyColors.myDark,
    primaryColor: MyColors.myPrimary,
    brightness: Brightness.dark,
    textTheme: MyTextTheme.darkTextTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.darkTextFormFieldTheme,
    textButtonTheme: MyTextButtonTheme.darkTextButtonTheme,
    navigationBarTheme: MyNavigationBarTheme.darkNavigationBarTheme,
    dropdownMenuTheme: MyDropdownMenuTheme.darkDropdownMenuTheme,
  );
}