
part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.error({required String message}) = _Error;
  const factory HomeState.noInternet() = _NoInternet;
  const factory HomeState.success({required ApiResponse<HomeModel> data}) = _Success;
}
