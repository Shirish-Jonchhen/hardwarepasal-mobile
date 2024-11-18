
part of 'brands_cubit.dart';

@freezed
class BrandsState with _$BrandsState {
  const factory BrandsState.initial() = _Initial;
  const factory BrandsState.loading() = _Loading;
  const factory BrandsState.error({required String message}) = _Error;
  const factory BrandsState.noInternet() = _NoInternet;
  const factory BrandsState.success({required List<BrandsItemModel> data}) = _Success;
}
