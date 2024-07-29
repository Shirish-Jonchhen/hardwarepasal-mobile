part of 'home_recently_viewed_cubit.dart';

@freezed
class HomeRecentlyViewedState with _$HomeRecentlyViewedState {
  const factory HomeRecentlyViewedState.initial() = _Initial;
  const factory HomeRecentlyViewedState.loading() = _Loading;
  const factory HomeRecentlyViewedState.noInternet() = _NoInternet;
  const factory HomeRecentlyViewedState.error({required String message}) = _Error;
  const factory HomeRecentlyViewedState.success({required List<ProductModel> products}) = _Success;
}