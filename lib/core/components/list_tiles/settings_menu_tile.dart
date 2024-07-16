import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';
import '../../theming/custom_themes/my_font_weight.dart';

class SettingsMenuTile extends StatelessWidget {
  final String title, subtitle;
  final String? image;
  final IconData? icon;
  final bool iconOrImage;
  final Widget? trailing;
  final Function()? onTap;

  const SettingsMenuTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.iconOrImage = true,
    this.image,
    this.trailing,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return ListTile(
      leading: iconOrImage
          ? Image(
        image: AssetImage(image??""),
        width: 25.w,
        height: 25.h,
        color: MyColors.myPrimary,
      )
          : Container(
        child: Icon(
          icon,
          color: MyColors.myPrimary,
          size: 28,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
          color: dark ? MyColors.myWhite : MyColors.myBlack,
          fontWeight: MyFontWeight.medium,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 12.sp,
          color: dark
              ? MyColors.myWhite.withOpacity(0.5)
              : MyColors.myBlack.withOpacity(0.5),
          fontWeight: MyFontWeight.regular,
        ),
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
