part of 'onboarding_cubit.dart';

@immutable
abstract class OnboardingState {}

class OnboardingInitialState extends OnboardingState {}

class NextPageState extends OnboardingState {}

class ChangePageState extends OnboardingState {}
