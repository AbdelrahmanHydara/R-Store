import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';
import '../../theming/custom_themes/my_font_weight.dart';

class MyProductPriceText extends StatelessWidget {
  final String price, currencySign;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  const MyProductPriceText({
    super.key,
    required this.price,
    this.currencySign = "\$",
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? TextStyle(
              fontSize: 24.sp,
              color: dark ? MyColors.myWhite : MyColors.myBlack,
              decoration: lineThrough ? TextDecoration.lineThrough : null,
              fontWeight: MyFontWeight.semiBold,
            )
          : TextStyle(
              fontSize: 16.sp,
              color: dark ? MyColors.myWhite : MyColors.myBlack,
              fontWeight: MyFontWeight.semiBold,
            ),
    );
  }
}
