import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';
import '../../helpers/enums.dart';
import '../../helpers/spacing.dart';
import 'my_brand_title_text.dart';

class MyBrandTitleTextAndVerifiedIcon extends StatelessWidget {
  final Color? textColor, iconColor;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  const MyBrandTitleTextAndVerifiedIcon({
    super.key,
    this.textColor,
    this.iconColor = MyColors.myPrimary,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MyBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        horizontalSpace(4),
        Icon(
          Icons.verified,
          color: iconColor,
          size: 12,
        )
      ],
    );
  }
}
