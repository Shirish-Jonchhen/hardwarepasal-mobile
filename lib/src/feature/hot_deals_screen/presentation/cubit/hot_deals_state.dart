part of 'hot_deals_cubit.dart';


@freezed
class HotDealsState with _$HotDealsState {
  const factory HotDealsState.initial() = _Initial;
  const factory HotDealsState.loading() = _Loading;
  const factory HotDealsState.error({required String message}) = _Error;
  const factory HotDealsState.noInternet() = _NoInternet;
  const factory HotDealsState.success({required List<ProductModel> data}) = _Success;
}