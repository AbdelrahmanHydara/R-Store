import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/helpers/extensions.dart';
import '../../../../core/components/appbar/my_app_bar.dart';
import '../../../../core/components/layouts/my_grid_layout.dart';
import '../../../../core/constants/my_colors.dart';
import '../../../../core/constants/my_strings.dart';
import '../../../../core/helpers/my_helpers_functions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/custom_themes/my_font_weight.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildMyAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            MyGridLayout(
              itemCount: 21, itemBuilder: (BuildContext , int ) {
                return null;
                },
              // itemBuilder: (context,index) => MyProductCardVertical(),
            ),
          ],
        ),
      ),
    );
  }

  MyAppBar _buildMyAppBar(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyAppBar(
      showBackArrow: false,
      title: Text(
        MyStrings.wishlistAppBarTitle,
        style: TextStyle(
          fontSize: 24.sp,
          color: dark ? MyColors.myWhite : MyColors.myBlack,
          fontWeight: MyFontWeight.semiBold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            context.pushNamed(Routes.homeScreen);
          },
          icon: Icon(
            Icons.add,
            color: dark ? MyColors.myWhite.withOpacity(.8) : MyColors.myBlack.withOpacity(.8),
          ),
        ),
      ],
    );
  }
}
