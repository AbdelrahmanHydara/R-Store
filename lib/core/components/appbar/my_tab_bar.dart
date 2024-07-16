import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;

  const MyTabBar({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? MyColors.myDark : MyColors.myWhite,
      child: TabBar(
        isScrollable: true,
        indicatorColor: MyColors.myPrimary,
        unselectedLabelColor: MyColors.darkGery,
        labelColor: dark ? MyColors.myWhite : MyColors.myPrimary,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
