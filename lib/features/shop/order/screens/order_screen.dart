import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';
import 'order_list_item.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildMyAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: OrderListItem(),
      ),
    );
  }

  MyAppBar _buildMyAppBar(context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyAppBar(
      showBackArrow: true,
      title: Text(
        "My Orders",
        style: TextStyle(
          fontSize: 18.sp,
          color: dark ? MyColors.myWhite : MyColors.myBlack,
          fontWeight: MyFontWeight.semiBold,
        ),
      ),
    );
  }
}
