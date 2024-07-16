import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/components/images/my_rounded_image.dart';
import 'package:r_store/core/components/products/cards/my_product_card_horizontal.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/helpers/spacing.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildMyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              MyRoundedImage(
                width: double.infinity,
                applyImageRadius: true,
                image: "assets/images/shopping-banner-1.jpg",
              ),
              verticalSpace(32),
              Column(
                children: [
                  MySectionHeading(
                    title: "Sports Shoes",
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  verticalSpace(8),
                  SizedBox(
                    height: 105.h,
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context,index) => horizontalSpace(16),
                      itemBuilder: (context,index) => MyProductCardHorizontal(),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  MyAppBar _buildMyAppBar() {
    return MyAppBar(
      showBackArrow: true,
      title: Text(
          "Sports",
      ),
    );
  }
}
