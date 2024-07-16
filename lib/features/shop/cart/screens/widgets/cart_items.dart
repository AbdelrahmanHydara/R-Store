import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/products/cart/my_cart_item.dart';
import 'package:r_store/core/components/products/cart/my_product_quantity_with_add_remove_button.dart';
import 'package:r_store/core/components/texts/my_product_price_text.dart';
import 'package:r_store/core/helpers/spacing.dart';

class CartItems extends StatelessWidget {
  final bool showAddRemoveButtons;

  const CartItems({super.key,  this.showAddRemoveButtons = true,});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 2,
      shrinkWrap: true,
      separatorBuilder: (context,index) => verticalSpace(32),
      itemBuilder: (context,index) {
        return Column(
          children: [
            const MyCartItem(),
            if(showAddRemoveButtons)
              verticalSpace(16),
            if(showAddRemoveButtons)
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    horizontalSpace(70.w),
                    const MyProductQuantityWithAddRemoveButton(),
                  ],
                ),
                const MyProductPriceText(
                  price: "350",
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
