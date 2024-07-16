part of 'user_cubit.dart';

abstract class UserState {}

final class UserInitial extends UserState {}

final class GetUserDataLoadingState extends UserState {}

final class GetUserDataSuccessState extends UserState {}

final class GetUserDataErrorState extends UserState {
  final String error;

  GetUserDataErrorState(this.error);
}

final class UploadUserProfileImageLoadingState extends UserState {}

final class UploadUserProfileImageSuccessState extends UserState {}

final class UploadUserProfileImageErrorState extends UserState {
  final String error;

  UploadUserProfileImageErrorState(this.error);
}
