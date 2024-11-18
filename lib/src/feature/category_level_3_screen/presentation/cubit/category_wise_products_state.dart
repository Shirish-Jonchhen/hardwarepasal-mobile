
part of 'category_wise_products_cubit.dart';


@freezed
class CategoryWiseProductsState with _$CategoryWiseProductsState {
  const factory CategoryWiseProductsState.initial() = _Initial;
  const factory CategoryWiseProductsState.loading() = _Loading;
  const factory CategoryWiseProductsState.error({required String message}) = _Error;
  const factory CategoryWiseProductsState.noInternet() = _NoInternet;
  const factory CategoryWiseProductsState.success({required ApiResponse<CategoryWiseProductsResponseModel> data}) = _Success;
}
