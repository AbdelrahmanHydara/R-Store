part of 'home_cubit.dart';

abstract class HomeState {}

final class HomeInitial extends HomeState {}

final class ConnectedState extends HomeState {}

final class NotConnectedState extends HomeState {}

final class GetAllCategoriesLoadingState extends HomeState {}

final class GetAllCategoriesSuccessState extends HomeState {}

final class GetAllCategoriesErrorState extends HomeState {
  final String error;

  GetAllCategoriesErrorState(this.error);
}

final class GetAllBannersLoadingState extends HomeState {}

final class GetAllBannersSuccessState extends HomeState {}

final class GetAllBannersErrorState extends HomeState {
  final String error;

  GetAllBannersErrorState(this.error);
}

final class GetAllProductsLoadingState extends HomeState {}

final class GetAllProductsSuccessState extends HomeState {}

final class GetAllProductsErrorState extends HomeState {
  final String error;

  GetAllProductsErrorState(this.error);
}

final class GetAllProductImagesState extends HomeState {
  final String selectedProductImages;

  GetAllProductImagesState(this.selectedProductImages);
}


