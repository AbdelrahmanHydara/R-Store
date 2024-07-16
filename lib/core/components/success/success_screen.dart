import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_images.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class SuccessScreen extends StatelessWidget {
  final String title, subtitle;
  final void Function() onTap;

  const SuccessScreen({
    super.key,
    required this.onTap,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            children: [
              Lottie.asset(
                width: double.infinity,
                height: 350.h,
                MyImages.success,
              ),
              verticalSpace(32),
              Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26.sp,
                      color: dark ? MyColors.myWhite : MyColors.myBlack,
                      fontWeight: MyFontWeight.semiBold,
                    ),
                  ),
                  verticalSpace(32),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: dark ? MyColors.myWhite.withOpacity(0.5) : MyColors.myBlack.withOpacity(0.5),
                      fontWeight: MyFontWeight.regular,

                    ),
                  ),
                ],
              ),
              verticalSpace(40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onTap,
                  child: const Text(
                    MyStrings.nextContinue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
