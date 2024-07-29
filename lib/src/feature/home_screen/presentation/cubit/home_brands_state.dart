
part of 'home_brands_cubit.dart';

@freezed
class HomeBrandsState with _$HomeBrandsState {
  const factory HomeBrandsState.initial() = _Initial;
  const factory HomeBrandsState.loading() = _Loading;
  const factory HomeBrandsState.error({required String message}) = _Error;
  const factory HomeBrandsState.noInternet() = _NoInternet;
  const factory HomeBrandsState.success({required ApiResponse<HomeBrandsByCategoryModel> data}) = _Success;
}
