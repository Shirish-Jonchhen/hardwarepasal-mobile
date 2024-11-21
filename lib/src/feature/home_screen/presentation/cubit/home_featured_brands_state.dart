part of 'home_featured_brands_cubit.dart';


@freezed
class HomeFeaturedBrandsState with _$HomeFeaturedBrandsState {
  const factory HomeFeaturedBrandsState.initial() = _Initial;
  const factory HomeFeaturedBrandsState.loading() = _Loading;
  const factory HomeFeaturedBrandsState.noInternet() = _NoInternet;
  const factory HomeFeaturedBrandsState.error({required String message}) = _Error;
  const factory HomeFeaturedBrandsState.success({required FeaturedBrandsModel brands}) = _Success;
}