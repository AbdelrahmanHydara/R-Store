import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';

class MyCheckboxTheme {
  MyCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
      side: BorderSide(
        color: MyColors.myBlack,
      ),
    ),
    checkColor: MaterialStateProperty.resolveWith(
          (states) {
      if(states.contains(MaterialState.selected)){
        return MyColors.myWhite;
      } else {
        return MyColors.myBlack;
      }
    },
    ),
    fillColor: MaterialStateProperty.resolveWith(
          (states) {
        if(states.contains(MaterialState.selected)){
          return MyColors.myPrimary;
        } else {
          return MyColors.myBlack;
        }
      },
    ),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkColor: MaterialStateProperty.resolveWith(
          (states) {
        if(states.contains(MaterialState.selected)){
          return MyColors.myWhite;
        } else {
          return MyColors.myBlack;
        }
      },
    ),
    fillColor: MaterialStateProperty.resolveWith(
          (states) {
        if(states.contains(MaterialState.selected)){
          return MyColors.myPrimary;
        } else {
          return MyColors.myWhite;
        }
      },
    ),
  );
}