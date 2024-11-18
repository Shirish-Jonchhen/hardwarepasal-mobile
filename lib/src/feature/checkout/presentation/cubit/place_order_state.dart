
part of 'place_order_cubit.dart';

@freezed
class PlaceOrderState with _$PlaceOrderState{
  const factory PlaceOrderState.initial() = _Initial;
  const factory PlaceOrderState.loading() = _Loading;
  const factory PlaceOrderState.error({required String message}) = _Error;
  const factory PlaceOrderState.noInternet() = _NoInternet;
  const factory PlaceOrderState.success({required ApiResponse<PlaceOrderResponseModel> data}) = _Success;
}
