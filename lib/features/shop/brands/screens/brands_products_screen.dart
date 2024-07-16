import 'package:flutter/material.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/components/brands/my_brand_card.dart';
import 'package:r_store/core/components/products/sortable/sortable_products.dart';
import 'package:r_store/core/helpers/spacing.dart';

class BrandsProductsScreen extends StatelessWidget {
  const BrandsProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Nike",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              MyBrandCard(
                showBorder: true,
              ),
              verticalSpace(32),
              SortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
