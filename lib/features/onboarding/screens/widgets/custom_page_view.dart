import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/constants/my_colors.dart';
import '../../../../core/helpers/my_helpers_functions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/custom_themes/my_font_weight.dart';
import '../../cubit/onboarding_cubit.dart';
import '../../data/models/onboarding_model.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: PageView.builder(
        onPageChanged: context.read<OnboardingCubit>().onChangePage,
        controller: context.read<OnboardingCubit>().pageController,
        physics: const BouncingScrollPhysics(),
        itemCount: onBoardingList.length,
        itemBuilder: (BuildContext context, int index) =>
            buildOnboardItem(onBoardingList[index], context,),
      ),
    );
  }

  Widget buildOnboardItem(OnBoardingModel model, BuildContext context,) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Lottie.asset(
          width: double.infinity,
          height: 350.h,
          model.image,
        ),
        verticalSpace(10),
        Text(
          model.title,
          style: TextStyle(
            fontSize: 25.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.semiBold,
          ),
          textAlign: TextAlign.center,
        ),
        verticalSpace(20),
        Text(
          model.subtitle,
          style: TextStyle(
            fontSize: 14.sp,
            color: dark ? MyColors.myWhite : MyColors.myBlack,
            fontWeight: MyFontWeight.regular,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
