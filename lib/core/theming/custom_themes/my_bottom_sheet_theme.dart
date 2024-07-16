import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';

class MyBottomSheetTheme {
  MyBottomSheetTheme._();

  /// Light Bottom Sheet Theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: MyColors.myWhite,
    modalBackgroundColor: MyColors.myWhite,
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );

  /// Dark Bottom Sheet Theme
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: MyColors.myBlack,
    modalBackgroundColor: MyColors.myBlack,
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}