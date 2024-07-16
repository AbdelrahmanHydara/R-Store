import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/layouts/my_grid_layout.dart';
import 'package:r_store/core/helpers/spacing.dart';

import 'my_shimmer_effect.dart';

class MyVerticalProductShimmer extends StatelessWidget {
  final int itemCount;

  const MyVerticalProductShimmer({super.key, this.itemCount = 4});

  @override
  Widget build(BuildContext context) {
    return MyGridLayout(
      itemCount: itemCount,
      itemBuilder: (context, index) => SizedBox(
        width: 180.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyShimmerEffect(
              width: 180.w,
              height: 180.h,
            ),
            verticalSpace(16),
            MyShimmerEffect(
              width: 160.w,
              height: 15.h,
            ),
            verticalSpace(8),
            MyShimmerEffect(
              width: 110.w,
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
