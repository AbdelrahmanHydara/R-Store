import 'package:flutter/material.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/spacing.dart';

class MySnackBar {

  static success({required String text, required BuildContext context}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              Icons.info_outlined,
            ),
            horizontalSpace(10),
            Text(
              text,
              style: TextStyle(
                color: MyColors.myWhite,
              ),
            ),
          ],
        ),
        duration: Duration(
          seconds: 5,
        ),
        backgroundColor: MyColors.myGery,
        behavior: SnackBarBehavior.floating,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  static error({required String text, required BuildContext context}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              Icons.warning_amber_outlined,
            ),
            horizontalSpace(10),
            Text(
              text,
              style: TextStyle(
                color: MyColors.myWhite,
              ),
            ),
          ],
        ),
        duration: Duration(
          seconds: 5,
        ),
        backgroundColor: MyColors.myRed,
        behavior: SnackBarBehavior.floating,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  static notConnection({required BuildContext context}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
                Icons.wifi_off_outlined,
            ),
            horizontalSpace(10),
            Text(
              "No internet connection",
              style: TextStyle(
                color: MyColors.myWhite,
              ),
            ),
          ],
        ),
        duration: Duration(
          seconds: 5,
        ),
        backgroundColor: MyColors.myGery,
        behavior: SnackBarBehavior.floating,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}