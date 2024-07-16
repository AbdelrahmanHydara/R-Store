import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../helpers/enums.dart';
import '../../theming/custom_themes/my_font_weight.dart';

class MyBrandTitleText extends StatelessWidget {
  final String title;
  final TextSizes brandTextSize;
  final int maxLines;
  final Color? color;
  final TextAlign? textAlign;

  const MyBrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small
          ? TextStyle(
              fontSize: 12.sp,
              color: color,
              fontWeight: MyFontWeight.regular,
            )
          : brandTextSize == TextSizes.medium
              ? TextStyle(
                  fontSize: 16.sp,
                  color: color,
                  fontWeight: MyFontWeight.medium,
                )
              : brandTextSize == TextSizes.medium
                  ? TextStyle(
                      fontSize: 16.sp,
                      color: color,
                      fontWeight: MyFontWeight.semiBold,
                    )
                  : TextStyle(
                      fontSize: 16.sp,
                      color: color,
                      fontWeight: MyFontWeight.semiBold,
                    ),
    );
  }
}
