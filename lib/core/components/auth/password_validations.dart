import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import '../../../../../core/constants/my_strings.dart';
import '../../../../../core/helpers/spacing.dart';

class PasswordValidations extends StatelessWidget {

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasMinLength;
  final bool hasSpecialCharacters;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasMinLength,
    required this.hasSpecialCharacters,
  });

  Widget buildValidationRow(String text,bool hasValidated,context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        const CircleAvatar(
          radius: 3,
          backgroundColor: MyColors.myGery,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyle(
            fontSize: 14.sp,
            color: hasValidated ?
            dark ? MyColors.myWhite : MyColors.myBlack :
            dark ? MyColors.myWhite : MyColors.myBlack,
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: MyColors.myGreen,
            decorationThickness: 2,
          ),
          //   color: hasValidated ? MyColors.myGery : MyColors.myDarkBlue,
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(MyStrings.specialCharacters,hasSpecialCharacters,context),
        verticalSpace(2),
        buildValidationRow(MyStrings.uppercase,hasUpperCase,context),
        verticalSpace(2),
        buildValidationRow(MyStrings.lowercase,hasLowerCase,context),
        verticalSpace(2),
        buildValidationRow(MyStrings.number,hasNumber,context),
        verticalSpace(2),
        buildValidationRow(MyStrings.charactersLong,hasMinLength,context),
      ],
    );
  }
}