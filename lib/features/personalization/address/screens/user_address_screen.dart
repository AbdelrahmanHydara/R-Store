import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';
import 'widgets/single_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildMyAppBar(context),
      floatingActionButton: _buildFloatingActionButton(context),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            SingleAddress(
              selectedAddress: true,
            ),
            SingleAddress(
              selectedAddress: false,
            ),
            SingleAddress(
              selectedAddress: false,
            ),
            SingleAddress(
              selectedAddress: false,
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.pushNamed(Routes.addNewAddressScreen);
      },
      child: Icon(
        Icons.add,
        color: MyColors.myWhite,
      ),
      backgroundColor: MyColors.myPrimary,
    );
  }

  MyAppBar _buildMyAppBar(context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyAppBar(
      showBackArrow: true,
      title: Text(
        "My Addresses",
        style: TextStyle(
          fontSize: 18.sp,
          color: dark ? MyColors.myWhite : MyColors.myBlack,
          fontWeight: MyFontWeight.semiBold,
        ),
      ),
    );
  }
}
