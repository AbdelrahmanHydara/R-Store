import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/custom_shapes/my_rounded_container.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      padding: const EdgeInsetsDirectional.only(
        start: 16,
        bottom: 8,
        end: 8,
        top: 8,
      ),
      showBorder: true,
      backgroundColor: dark ? MyColors.myDark : MyColors.myLight,
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Have a promo code ? Enter here",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 75.w,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? MyColors.myWhite.withOpacity(.5) : MyColors.myDark.withOpacity(.5),
                backgroundColor: MyColors.myGery.withOpacity(.2),
                side: BorderSide(
                  color: MyColors.myGery.withOpacity(.1),
                ),
              ),
              onPressed: (){},
              child: Text(
                "Apply",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
