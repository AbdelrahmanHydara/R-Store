part of 'update_name_cubit.dart';

abstract class UpdateNameState {}

final class UpdateNameInitial extends UpdateNameState {}

final class InitializeNameState extends UpdateNameState {}

final class UpdateUserNameLoading extends UpdateNameState {}

final class UpdateUserNameSuccess extends UpdateNameState {}

final class UpdateUserNameError extends UpdateNameState {
  final String error;

  UpdateUserNameError(this.error);
}
