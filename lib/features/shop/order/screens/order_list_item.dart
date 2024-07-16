import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/custom_shapes/my_rounded_container.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (context,index) => verticalSpace(16),
      itemBuilder: (context,index) => MyRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(16),
        backgroundColor: dark ? MyColors.myBlack : MyColors.myLight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.card_membership,
                ),
                horizontalSpace(8),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Processing",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: MyColors.myPrimary,
                          fontWeight: MyFontWeight.medium,
                        ),
                      ),
                      Text(
                        "21 Nov 2021",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: dark ? MyColors.myWhite : MyColors.myBlack,
                          fontWeight: MyFontWeight.semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 16,
                  ),
                ),
              ],
            ),
            verticalSpace(16),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.tag,
                      ),
                      horizontalSpace(8),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: dark ? MyColors.myWhite.withOpacity(0.5) : MyColors.myBlack.withOpacity(0.5),
                                fontWeight: MyFontWeight.regular,
                              ),
                            ),
                            Text(
                              "[#21356]",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: dark ? MyColors.myWhite : MyColors.myBlack,
                                fontWeight: MyFontWeight.medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                      ),
                      horizontalSpace(8),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shipping Date",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: dark ? MyColors.myWhite.withOpacity(0.5) : MyColors.myBlack.withOpacity(0.5),
                                fontWeight: MyFontWeight.regular,
                              ),
                            ),
                            Text(
                              "05 Feb 2024",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: dark ? MyColors.myWhite : MyColors.myBlack,
                                fontWeight: MyFontWeight.medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
