import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'my_circle_container.dart';
import 'custom_curved_edges.dart';
import '../../constants/my_colors.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;

  const MyPrimaryHeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: Container(
        color: MyColors.myPrimary,
        child: Stack(
          children: [
            Positioned(
              top: -150.h,
              right: -250.w,
              child: MyCircleContainer(
                color: MyColors.textWhite.withOpacity(.1),
              ),
            ),
            Positioned(
              top: 100.h,
              right: -300.w,
              child: MyCircleContainer(
                color: MyColors.textWhite.withOpacity(.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
