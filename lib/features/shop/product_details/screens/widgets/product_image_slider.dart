import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/components/custom_shapes/my_curved_edges_widget.dart';
import 'package:r_store/core/components/images/my_rounded_image.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/features/shop/home/cubit/home_cubit.dart';
import 'package:r_store/features/shop/product_details/model/products_model.dart';

class ProductImageSlider extends StatelessWidget {
  final ProductsModel products;
  ProductImageSlider({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    final image = context.read<HomeCubit>().getAllProductImages(products);
    return MyCurvedEdgesWidget(
      child: Container(
        color: dark ? MyColors.darkerGery : MyColors.myLight,
        child: Stack(
          children: [
            SizedBox(
              height: 360.h,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 30.h,
                ),
                child: Center(
                  child: BlocBuilder<HomeCubit, HomeState>(
                    builder: (context, state) {
                      final image = context.read<HomeCubit>().selectedProductImages;
                      return Image(image: NetworkImage(products.thumbnail));
                    }
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              left: 10,
              bottom: 30,
              child: SizedBox(
                height: 80.h,
                child: ListView.separated(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => MyRoundedImage(
                    width: 70.w,
                    padding: const EdgeInsets.all(8),
                    border: Border.all(
                      color: MyColors.myPrimary,
                    ),
                    backgroundColor: dark ? MyColors.myDark : MyColors.myWhite,
                    image: "assets/images/google_logo.png",
                  ),
                  separatorBuilder: (context, index) => horizontalSpace(12),
                ),
              ),
            ),
            MyAppBar(
              showBackArrow: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: MyColors.myRed,
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
