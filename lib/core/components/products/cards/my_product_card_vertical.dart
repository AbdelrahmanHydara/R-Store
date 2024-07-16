import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/images/my_rounded_image.dart';
import 'package:r_store/core/components/layouts/my_grid_layout.dart';
import 'package:r_store/core/components/shimmer/my_vertical_product_shimmer.dart';
import 'package:r_store/core/components/styles/my_shadow_style.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/features/shop/home/cubit/home_cubit.dart';
import 'package:r_store/features/shop/product_details/screens/product_details_screen.dart';
import '../../../constants/my_colors.dart';
import '../../../helpers/my_helpers_functions.dart';
import '../../../routing/routes.dart';
import '../../../theming/custom_themes/my_font_weight.dart';
import '../../custom_shapes/my_rounded_container.dart';
import '../../icons/my_circular_icon.dart';
import '../../texts/my_brand_title_text_and_verified_icon.dart';
import '../../texts/my_product_price_text.dart';
import '../../texts/my_product_title_text.dart';

class MyProductCardVertical extends StatelessWidget {

  const MyProductCardVertical({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final dark = MyHelperFunctions.isDarkMode(context);
        if(context.read<HomeCubit>().productsList.length < 0) {
          return const MyVerticalProductShimmer();
        } else {
          return MyGridLayout(
            mainAxisExtent: 315,
            itemCount: context.read<HomeCubit>().productsList.length,
            itemBuilder: (context, index) {
            final products = context.read<HomeCubit>().productsList[index];
            final salePercentage = context.read<HomeCubit>().calculateSalePercentage(products.price, products.salePrice);
            // final price = context.read<HomeCubit>().getProductPrice(products);
            return GestureDetector(
            onTap: () {

              context.pushNamed(Routes.productDetailsScreen);
            },
            child: Container(
              width: 180.w,
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                boxShadow: [
                  MyShadowStyle.verticalProductShadow,
                ],
                borderRadius: BorderRadius.circular(16),
                color: dark ? MyColors.darkerGery : MyColors.myWhite,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyRoundedContainer(
                    height: 175.h,
                    width: 180.w,
                    padding: EdgeInsets.all(8),
                    backgroundColor: dark ? MyColors.myDark : MyColors.myLight,
                    child: Stack(
                      children: [
                        MyRoundedImage(
                          cachedNetworkImageWidth: 200.w,
                          cachedNetworkImageHeight: 170.h,
                          image: products.thumbnail,
                          applyImageRadius: true,
                          isNetworkImage: true,
                        ),
                        if(products.salePrice > 0)
                         Positioned(
                          top: 10,
                          child: MyRoundedContainer(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 8.w,
                              vertical: 4.h,
                            ),
                            radius: 8,
                            backgroundColor: MyColors.mySecondary.withOpacity(.8),
                            child: Text(
                              "$salePercentage%",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: MyColors.myBlack,
                                fontWeight: MyFontWeight.regular,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: MyCircularIcon(
                            icon: Icons.favorite_outline_outlined,
                            color: MyColors.myRed,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(8),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyProductTitleText(
                          title: products.title,
                          smallSize: true,
                        ),
                        verticalSpace(8),
                        MyBrandTitleTextAndVerifiedIcon(
                          title: products.brandName,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (products.oldPrice != 0)
                                Text(
                                 "\$${products.oldPrice}",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: dark
                                        ? MyColors.myWhite.withOpacity(0.5)
                                        : MyColors.myBlack.withOpacity(0.5),
                                    fontWeight: MyFontWeight.regular,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              MyProductPriceText(price: "${products.price}"),
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: MyColors.myDark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: SizedBox(
                            width: 34.w,
                            height: 34.h,
                            child: const Icon(
                              Icons.add,
                              color: MyColors.myWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
            },
        );
        }
      },
    );
  }
}
