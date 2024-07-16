import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/helpers/spacing.dart';
import '../../constants/my_colors.dart';
import '../../constants/my_images.dart';

class MySocialButton extends StatelessWidget {
  final void Function()? onPressedLoginWithGoogle;

  const MySocialButton({super.key, this.onPressedLoginWithGoogle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(28),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: MyColors.gery,
                ),
              ),
              child: IconButton(
                onPressed: onPressedLoginWithGoogle,
                icon: Image(
                  width: 24.w,
                  height: 24.h,
                  image: AssetImage(MyImages.logoGoogle),
                ),
              ),
            ),
            horizontalSpace(20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: MyColors.gery,
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image(
                  width: 24.w,
                  height: 24.h,
                  image: AssetImage(MyImages.logoFacebook),
                ),
              ),
            ),
          ],
        ),
        verticalSpace(28),
      ],
    );
  }
}
