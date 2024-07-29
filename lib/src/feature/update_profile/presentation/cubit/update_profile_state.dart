
part of 'update_profile_cubit.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState{
  const factory UpdateProfileState.initial() = _Initial;
  const factory UpdateProfileState.loading() = _Loading;
  const factory UpdateProfileState.error({required String message}) = _Error;
  const factory UpdateProfileState.noInternet() = _NoInternet;
  const factory UpdateProfileState.success({required ApiResponse<UpdateUserModel> data}) = _Success;
}
