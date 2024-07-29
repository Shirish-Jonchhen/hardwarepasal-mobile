part of 'item_details_cubit.dart';

@freezed
class ItemDetailsState with _$ItemDetailsState {
  const factory ItemDetailsState.initial() = _Initial;
  const factory ItemDetailsState.loading() = _Loading;
  const factory ItemDetailsState.error({required String message}) = _Error;
  const factory ItemDetailsState.noInternet() = _NoInternet;
  const factory ItemDetailsState.success({required ProductDetailModel data}) = _Success;
}
