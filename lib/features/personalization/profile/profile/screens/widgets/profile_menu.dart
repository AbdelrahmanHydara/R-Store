import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class ProfileMenu extends StatelessWidget {
  final String title, value;
  final IconData icon;
  final VoidCallback onTap;

  const ProfileMenu({
    super.key,
    required this.title,
    required this.value,
    this.icon = Icons.arrow_forward_ios_outlined,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: dark
                      ? MyColors.myWhite.withOpacity(0.5)
                      : MyColors.myBlack.withOpacity(0.5),
                  fontWeight: MyFontWeight.medium,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: dark ? MyColors.myWhite : MyColors.myBlack,
                  fontWeight: MyFontWeight.regular,
                ),
              ),
            ),
            Expanded(
              child: Icon(
                icon,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
