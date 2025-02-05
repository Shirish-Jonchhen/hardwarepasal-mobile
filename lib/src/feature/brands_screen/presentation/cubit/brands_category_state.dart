
part of 'brands_category_cubit.dart';


@freezed
class BrandsCategoryState with _$BrandsCategoryState {
  const factory BrandsCategoryState.initial() = _Initial;
  const factory BrandsCategoryState.loading() = _Loading;
  const factory BrandsCategoryState.error({required String message}) = _Error;
  const factory BrandsCategoryState.noInternet() = _NoInternet;
  const factory BrandsCategoryState.success({required List<BrandsItemCategoryModel> data}) = _Success;
}
