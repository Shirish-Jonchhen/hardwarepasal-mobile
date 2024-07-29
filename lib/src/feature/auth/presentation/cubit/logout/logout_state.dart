
part of 'logout_cubit.dart';

@freezed
class LogoutState with _$LogoutState{
  const factory LogoutState.initial() = _Initial;
  const factory LogoutState.loading() = _Loading;
  const factory LogoutState.noInternet() = _NoInternet;
  const factory LogoutState.error({required String message}) = _Error;
  const factory LogoutState.success({required String message, required LogoutModel logoutModel}) = _Success;
}