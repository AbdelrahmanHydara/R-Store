import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/images/my_rounded_image.dart';
import 'package:r_store/core/components/shimmer/my_shimmer_effect.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/features/shop/home/cubit/home_cubit.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final banner = context.read<HomeCubit>().bannerList;
        if(state is GetAllBannersLoadingState)
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: const MyShimmerEffect(
              width: double.infinity,
              height: 180,
              radius: 16,
            ),
          );
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 10.h,
          ),
          child: CarouselSlider(
            items: banner.map((banner) => MyRoundedImage(
              width: double.infinity,
              cachedNetworkImageWidth: double.infinity,
              cachedNetworkImageHeight: 180,
              image: banner.imageUrl,
              isNetworkImage: true,
              onPressed: () {
                context.pushNamed(banner.targetScreen);
              },
            )).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(
                seconds: 2,
              ),
              autoPlayAnimationDuration: const Duration(
                seconds: 1,
              ),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
          ),
        );
      },
    );
  }
}
