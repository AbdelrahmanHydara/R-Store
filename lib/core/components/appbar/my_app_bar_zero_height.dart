import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBarZeroHeight extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackArrow;

  const MyAppBarZeroHeight({
    super.key,
    this.showBackArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: AppBar(
        automaticallyImplyLeading: showBackArrow,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(20);
}
