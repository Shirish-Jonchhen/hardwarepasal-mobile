part of 'my_order_cubit.dart';

@freezed
class MyOrderState with _$MyOrderState {
  const factory MyOrderState.initial() = _Initial;
  const factory MyOrderState.loading() = _Loading;
  const factory MyOrderState.error({required String message}) = _Error;
  const factory MyOrderState.noInternet() = _NoInternet;
  const factory MyOrderState.success({required MyOrdersModel data}) = _Success;
}