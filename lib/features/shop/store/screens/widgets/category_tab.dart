import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/features/shop/home/data/model/category_model.dart';
import '../../../../../core/components/brands/my_brand_showcase.dart';
import '../../../../../core/components/layouts/my_grid_layout.dart';
import '../../../../../core/components/texts/my_section_heading.dart';
import '../../../../../core/constants/my_strings.dart';

class CategoryTab extends StatelessWidget {

  final CategoryModel category;

  const CategoryTab({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: Column(
            children: [
              MyBrandShowcase(
                images: [
                  "assets/images/shopping-banner-2.jpg",
                  "assets/images/shopping-banner-2.jpg",
                  "assets/images/shopping-banner-2.jpg",
                ],
              ),
              verticalSpace(16),
              MySectionHeading(
                onPressed: () {},
                title: MyStrings.mightLike,
                showActionButton: true,
              ),
              verticalSpace(16),
              MyGridLayout(
                itemBuilder: (BuildContext , int ) {return null;},
                // itemBuilder: (context, index) => MyProductCardVertical(),
                itemCount: 10,
              ),
              verticalSpace(32),
            ],
          ),
        ),
      ],
    );
  }
}
