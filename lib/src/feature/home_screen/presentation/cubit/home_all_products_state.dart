part of 'home_all_products_cubit.dart';




@freezed
class HomeAllProductsState with _$HomeAllProductsState {
  const factory HomeAllProductsState.initial() = _Initial;
  const factory HomeAllProductsState.loading() = _Loading;
  const factory HomeAllProductsState.error({required String message}) = _Error;
  const factory HomeAllProductsState.noInternet() = _NoInternet;
  const factory HomeAllProductsState.success({required List<ProductModel> data}) = _Success;
}
