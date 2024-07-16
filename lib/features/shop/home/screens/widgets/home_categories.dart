import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/images/my_vertical_image_text.dart';
import 'package:r_store/core/components/shimmer/my_category_shimmer.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/shop/home/cubit/home_cubit.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if(state is GetAllCategoriesLoadingState)
          return const MyCategoryShimmer();
        return SizedBox(
          height: 80.h,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final category = context.read<HomeCubit>().categoryList[index];
                return MyVerticalImageText(
                  title: category.name,
                  image: category.image,
                  isNetworkImage: true,
                  onTap: () {
                    context.pushNamed(Routes.subCategoriesScreen);
                },
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 8.w),
            itemCount: context.read<HomeCubit>().categoryList.length,
          ),
        );

      },
    );
  }
}
