import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';
import '../../helpers/spacing.dart';
import '../../theming/custom_themes/my_font_weight.dart';

class MySearchContainer extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  const MySearchContainer({
    super.key,
    required this.text,
    this.icon = Icons.search_outlined,
    this.showBackground = true,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 14.h,
      ),
      decoration: BoxDecoration(
        color: showBackground
            ? dark
                ? MyColors.myDark
                : MyColors.myLight
            : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: showBorder
            ? Border.all(color: dark ? MyColors.myDark : MyColors.gery)
            : Border.all(color: dark ? MyColors.gery : MyColors.gery),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: MyColors.darkGery,
          ),
          horizontalSpace(8),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              color: MyColors.darkGery,
              fontWeight: MyFontWeight.medium,
            ),
          ),
        ],
      ),
    );
  }
}
