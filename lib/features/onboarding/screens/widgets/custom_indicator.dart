import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/constants/my_colors.dart';
import '../../../../core/helpers/my_helpers_functions.dart';
import '../../cubit/onboarding_cubit.dart';
import '../../data/models/onboarding_model.dart';


class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return SmoothPageIndicator(
      controller: context.read<OnboardingCubit>().pageController,
      count: onBoardingList.length,
      effect: ExpandingDotsEffect(
        dotColor: dark ? MyColors.myWhite : MyColors.myGery,
        activeDotColor: MyColors.myPrimary,
        dotHeight: 12.h,
        dotWidth: 12.w,
        expansionFactor: 4.w,
        spacing: 5.w,
      ),
    );
  }
}
