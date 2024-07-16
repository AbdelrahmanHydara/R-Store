import 'package:flutter/material.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/components/brands/my_brand_card.dart';
import 'package:r_store/core/components/layouts/my_grid_layout.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/routing/routes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Brands",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              MySectionHeading(
                title: "Brands",
              ),
              verticalSpace(16),
              MyGridLayout(
                mainAxisExtent: 80,
                itemCount: 8,
                itemBuilder: (context,index) => MyBrandCard(
                  showBorder: true,
                  onTap: () {
                    context.pushNamed(Routes.brandsProductsScreen);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
