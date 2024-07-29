
part of 'user_details_cubit.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.initial() = _Initial;
  const factory UserDetailsState.loading() = _Loading;
  const factory UserDetailsState.error({required String message}) = _Error;
  const factory UserDetailsState.noInternet() = _NoInternet;
  const factory UserDetailsState.success({required ApiResponse<UserDetails> data}) = _Success;
}
