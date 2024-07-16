import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_email_state.freezed.dart';

@freezed
class VerifyEmailState<T> with _$VerifyEmailState<T> {
  const factory VerifyEmailState.initial() = _Initial;

  const factory VerifyEmailState.success() = Success;
  const factory VerifyEmailState.error({required String error}) = Error;
}
