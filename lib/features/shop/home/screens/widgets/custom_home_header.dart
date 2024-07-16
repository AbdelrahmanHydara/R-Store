import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/custom_shapes/my_primary_header_container.dart';
import '../../../../../core/components/texts/my_section_heading.dart';
import '../../../../../core/constants/my_colors.dart';
import '../../../../../core/constants/my_strings.dart';
import '../../../../../core/helpers/spacing.dart';
import 'home_app_bar.dart';
import 'home_categories.dart';
import 'home_search.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPrimaryHeaderContainer(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          children: [
            const HomeAppBar(),
            verticalSpace(32),
            const HomeSearch(),
            verticalSpace(32),
            const MySectionHeading(
              title: MyStrings.homePopularCategories,
              textColor: MyColors.myWhite,
              showActionButton: false,
            ),
            verticalSpace(16),
            const HomeCategories(),
            verticalSpace(32),
          ],
        ),
      ),
    );
  }
}
