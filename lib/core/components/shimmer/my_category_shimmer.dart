import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/helpers/spacing.dart';

import 'my_shimmer_effect.dart';

class MyCategoryShimmer extends StatelessWidget {

  final int itemCount;

  const MyCategoryShimmer({super.key, this.itemCount = 6});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Column(
          children: [
            const MyShimmerEffect(
              width: 55,
              height: 55,
              radius: 55,
            ),
            verticalSpace(8),
            const MyShimmerEffect(
              width: 55,
              height: 8,
            ),
          ],
        ),
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
        itemCount: itemCount,
      ),
    );
  }
}
