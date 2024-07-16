import '../../../../core/constants/my_images.dart';
import '../../../../core/constants/my_strings.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subtitle;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    image: MyImages.onboarding2,
    title: MyStrings.onboardingTitle2,
    subtitle: MyStrings.onboardingSubtitle2,
  ),
  OnBoardingModel(
    image: MyImages.onboarding1,
    title: MyStrings.onboardingTitle1,
    subtitle: MyStrings.onboardingSubtitle1,
  ),
  OnBoardingModel(
    image: MyImages.onboarding3,
    title: MyStrings.onboardingTitle3,
    subtitle: MyStrings.onboardingSubtitle3,
  ),
];
