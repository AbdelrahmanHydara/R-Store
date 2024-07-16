import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitialState()) {
    pageController = PageController();
    FlutterNativeSplash.remove();
    // screenRedirect();
  }

  late SharedPreferences sharedPreferences;

  // screenRedirect() async {
  //   sharedPreferences.setBool("OnBoarding", true);
  //   sharedPreferences.getBool("OnBoarding") != true ? ;
  // }

  late PageController pageController;

  int currentIndex = 0;

  void nextPage() {
    currentIndex++;

    pageController.animateToPage(
      currentIndex,
      duration: const Duration(
        milliseconds: 900,
      ),
      curve: Curves.easeInOut,
    );
    emit(NextPageState());
  }

  void onChangePage(int index) {
    currentIndex = index;
    emit(ChangePageState());
  }
}
