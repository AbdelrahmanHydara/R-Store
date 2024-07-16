import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/custom_shapes/my_rounded_container.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class SingleAddress extends StatelessWidget {
  final bool selectedAddress;

  const SingleAddress({
    super.key,
    required this.selectedAddress,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      backgroundColor: selectedAddress
          ? MyColors.myPrimary.withOpacity(.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? MyColors.darkerGery
              : MyColors.gery,
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(
              selectedAddress ? Icons.check_circle : null,
              color: selectedAddress
                  ? dark
                      ? MyColors.myLight
                      : MyColors.myDark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Abdelrahman Nasser",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: dark ? MyColors.myWhite : MyColors.myBlack,
                  fontWeight: MyFontWeight.semiBold,
                ),
              ),
              verticalSpace(4),
              Text(
                "(+20) 1156398512",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(4),
              Text(
                "85125 Timmy Coves, South Liana, Maine, 5849642, Tanta",
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
