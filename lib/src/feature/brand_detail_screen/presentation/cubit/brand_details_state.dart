
part of 'brand_details_cubit.dart';

@freezed
class BrandDetailsState with _$BrandDetailsState {
  const factory BrandDetailsState.initial() = _Initial;
  const factory BrandDetailsState.loading() = _Loading;
  const factory BrandDetailsState.error({required String message}) = _Error;
  const factory BrandDetailsState.noInternet() = _NoInternet;
  const factory BrandDetailsState.success({required ApiResponse<BrandDetailsResponseModel> data}) = _Success;
}
