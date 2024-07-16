import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';
import '../../theming/custom_themes/my_font_weight.dart';

class MyProductTitleText extends StatelessWidget {
  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  const MyProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: smallSize
          ? TextStyle(
              fontSize: 12.sp,
              color: dark ? MyColors.myWhite : MyColors.myBlack,
              fontWeight: MyFontWeight.regular,
            )
          : TextStyle(
              fontSize: 16.sp,
              color: dark ? MyColors.myWhite : MyColors.myBlack,
              fontWeight: MyFontWeight.regular,
            ),
    );
  }
}
