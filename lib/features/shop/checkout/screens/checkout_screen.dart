import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/components/custom_shapes/my_rounded_container.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';
import 'package:r_store/features/shop/cart/screens/widgets/cart_items.dart';
import 'widgets/billing_address_section.dart';
import 'widgets/billing_amount_section.dart';
import 'widgets/billing_payment_section.dart';
import 'widgets/checkout_button.dart';
import 'widgets/coupon_code.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: _buildMyAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CartItems(
                showAddRemoveButtons: false,
              ),
              verticalSpace(32),
              CouponCode(),
              verticalSpace(32),
              MyRoundedContainer(
                showBorder: true,
                padding: const EdgeInsetsDirectional.all(16),
                backgroundColor: dark ? MyColors.myBlack : MyColors.myLight,
                child: Column(
                  children: [
                    const BillingAmountSection(),
                    verticalSpace(16),
                    const Divider(),
                    verticalSpace(16),
                    const BillingPaymentSection(),
                    verticalSpace(16),
                    const BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CheckoutButton(),
    );
  }

  MyAppBar _buildMyAppBar(context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyAppBar(
      showBackArrow: true,
      title: Text(
        "Order Review",
        style: TextStyle(
          fontSize: 18.sp,
          color: dark ? MyColors.myWhite : MyColors.myBlack,
          fontWeight: MyFontWeight.semiBold,
        ),
      ),
    );
  }
}
