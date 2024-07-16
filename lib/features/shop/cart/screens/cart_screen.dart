import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';
import 'widgets/cart_items.dart';
import 'widgets/checkout_button_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildMyAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(
        vertical: 20.h,
        horizontal: 20.w,
      ),
        child: CartItems(),
      ),
      bottomNavigationBar: CheckoutButtonCart(),
    );
  }

  MyAppBar _buildMyAppBar(context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyAppBar(
      showBackArrow: true,
      title: Text(
        "Cart",
        style: TextStyle(
          fontSize: 18.sp,
          color: dark ? MyColors.myWhite : MyColors.myBlack,
          fontWeight: MyFontWeight.semiBold,
        ),
      ),
    );
  }
}
