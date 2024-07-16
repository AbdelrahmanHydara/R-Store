import 'package:flutter/material.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/helpers/local/cache_helper.dart';
import '../../../../core/components/texts/my_text_button.dart';
import '../../../../core/constants/my_strings.dart';
import '../../../../core/routing/routes.dart';
import '../../cubit/onboarding_cubit.dart';
import '../../data/models/onboarding_model.dart';

class NextButtonAndText extends StatelessWidget {
  const NextButtonAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return  MyTextButton(
      onPressed: () {
        if(context.read<OnboardingCubit>().currentIndex < onBoardingList.length-1) {
          context.read<OnboardingCubit>().nextPage();
        } else {
          CacheHelper.savaData(key: "1", value: true).then((value) {
            if(value) {
              context.pushReplacementNamed(Routes.loginScreen);
            }
          });
        }
      },
      buttonText: context.read<OnboardingCubit>().currentIndex < onBoardingList.length-1
          ? MyStrings.next
          : MyStrings.getStarted,
    );
  }
}
