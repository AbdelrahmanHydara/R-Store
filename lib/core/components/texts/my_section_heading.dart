import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';
import '../../theming/custom_themes/my_font_weight.dart';

class MySectionHeading extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final Color? textColor;
  final bool showActionButton;
  final void Function()? onPressed;

  const MySectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = "View all",
    this.textColor,
    this.showActionButton = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 18.sp,
            color: textColor,
            fontWeight: MyFontWeight.semiBold,
          ),
        ),
        const Spacer(),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: TextStyle(
                fontSize: 14.sp,
                color: dark ? MyColors.myWhite.withOpacity(.6) : MyColors.myBlack.withOpacity(.6),
              ),
            ),
          ),
      ],
    );
  }
}
