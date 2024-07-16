import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';
import '../../../../../core/components/icons/cart_counter_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 40.h,
      ),
      child: Row(
        children: [
          Text(
            MyStrings.homeAppBarTitle,
            style: TextStyle(
              fontSize: 14.sp,
              color: MyColors.gery,
              fontWeight: MyFontWeight.regular,
            ),
          ),
          verticalSpace(4),
          const Spacer(),
          CartCounterIcon(
            onPressed: () {
              context.pushNamed(Routes.cartScreen);
            },
            counter: "3",
          ),
        ],
      ),
    );
  }
}
