import 'package:flutter/material.dart';
import 'package:r_store/core/components/brands/my_brand_card.dart';
import 'package:r_store/core/components/custom_shapes/my_search_container.dart';
import 'package:r_store/core/components/layouts/my_grid_layout.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/routing/routes.dart';

class SearchAndFeaturedBrands extends StatelessWidget {
  const SearchAndFeaturedBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        verticalSpace(16),
        const MySearchContainer(
          text: MyStrings.searchTitle,
          showBorder: false,
          showBackground: false,
        ),
        verticalSpace(32),
        MySectionHeading(
          title: MyStrings.storeFeaturedBrands,
          showActionButton: true,
          onPressed: () {
            context.pushNamed(Routes.allBrandsScreen);
          },
        ),
        verticalSpace(16),
        MyGridLayout(
          itemCount: 4,
          mainAxisExtent: 80,
          itemBuilder: (context, index) => MyBrandCard(
            showBorder: true,
          ),
        )
      ],
    );
  }
}
