import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/my_colors.dart';
import '../../helpers/my_helpers_functions.dart';

class CartCounterIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final String counter;
  final bool isColor;

  const CartCounterIcon({
    super.key,
    required this.onPressed,
    required this.counter,
    this.isColor = false,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.storefront_outlined,
            color: isColor
                ? dark
                    ? MyColors.myWhite
                    : MyColors.myBlack
                : MyColors.myWhite,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 14.h,
            width: 14.w,
            decoration: BoxDecoration(
              color: MyColors.myBlack,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                counter,
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: MyColors.myWhite,
                      fontSizeFactor: .9,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
