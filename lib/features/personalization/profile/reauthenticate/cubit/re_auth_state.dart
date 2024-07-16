part of 're_auth_cubit.dart';

abstract class ReAuthState {}

final class ReAuthInitial extends ReAuthState {}

final class DeleteAccountLoadingState extends ReAuthState {}

final class DeleteAccountSuccessState extends ReAuthState {}

final class DeleteAccountErrorState extends ReAuthState {
  final String error;

  DeleteAccountErrorState(this.error);
}
