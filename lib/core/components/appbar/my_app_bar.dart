import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/helpers/extensions.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final IconData? iconLeading;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final bool showBackArrow;
  final bool onPressedBackArrow;
  final void Function()? onPressed;

  const MyAppBar({
    super.key,
    this.title,
    this.iconLeading,
    this.actions,
    this.leadingOnPressed,
    this.showBackArrow = true,
    this.onPressedBackArrow = true,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: title,
        actions: actions,
        leading: showBackArrow
            ? IconButton(
                onPressed: onPressedBackArrow ? () => context.pop() : onPressed,
                icon: Icon(
                  Icons.arrow_back,
                ),
              )
            : iconLeading != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: Icon(
                      iconLeading,
                    ),
                  )
                : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55.h);
}
