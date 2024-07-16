import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/components/appbar/my_tab_bar.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';
import 'package:r_store/core/components/icons/cart_counter_icon.dart';
import 'package:r_store/features/shop/home/cubit/home_cubit.dart';
import 'widgets/category_tab.dart';
import 'widgets/search_and_featured_brands.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return DefaultTabController(
            length: context.read<HomeCubit>().categoryList.length,
            child: Scaffold(
              appBar: _buildMyAppBar(context),
              body: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  final category = context.read<HomeCubit>().categoryList;
                  if (state is GetAllCategoriesLoadingState)
                    return const Center(child: CircularProgressIndicator());
                  return NestedScrollView(
                    headerSliverBuilder: (context, innerBoxIsScrolled) {
                      return [
                        SliverAppBar(
                          automaticallyImplyLeading: false,
                          pinned: true,
                          floating: true,
                          expandedHeight: 395.h,
                          backgroundColor:
                              dark ? MyColors.myDark : MyColors.myWhite,
                          flexibleSpace: Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 20.w,
                              vertical: 16.h,
                            ),
                            child: SearchAndFeaturedBrands(),
                          ),
                          bottom: MyTabBar(tabs: category.map((category) => Tab(child: Text(category.name))).toList(),),
                        ),
                      ];
                    },
                    body: TabBarView(children: category.map((category) => CategoryTab(category: category)).toList(),),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  MyAppBar _buildMyAppBar(context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyAppBar(
      showBackArrow: false,
      title: Text(
        MyStrings.storeAppBarTitle,
        style: TextStyle(
          fontSize: 24.sp,
          color: dark ? MyColors.myWhite : MyColors.myBlack,
          fontWeight: MyFontWeight.semiBold,
        ),
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {},
          isColor: true,
          counter: "3",
        ),
      ],
    );
  }
}
