
part of 'change_password_cubit.dart';


@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _Initial;
  const factory ChangePasswordState.loading() = _Loading;
  const factory ChangePasswordState.noInternet() = _NoInternet;
  const factory ChangePasswordState.error({required String message}) = _Error;
  const factory ChangePasswordState.success({required ChangePasswordModel message}) = _Success;
}
