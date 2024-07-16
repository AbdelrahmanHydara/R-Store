import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/products/cards/my_product_card_vertical.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/routing/routes.dart';

class CustomHomeBody extends StatelessWidget {
  const CustomHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: Column(
        children: [
          verticalSpace(16),
          MySectionHeading(
            title: MyStrings.homePopularProducts,
            showActionButton: true,
            onPressed: () {
              context.pushNamed(Routes.allProductsScreen);
            },
          ),
          verticalSpace(16),
          MyProductCardVertical(),
        ],
      ),
    );
  }
}
