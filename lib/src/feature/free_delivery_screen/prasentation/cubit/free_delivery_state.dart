part of 'free_delivery_cubit.dart';


@freezed
class FreeDeliveryState with _$FreeDeliveryState {
  const factory FreeDeliveryState.initial() = _Initial;
  const factory FreeDeliveryState.loading() = _Loading;
  const factory FreeDeliveryState.error({required String message}) = _Error;
  const factory FreeDeliveryState.noInternet() = _NoInternet;
  const factory FreeDeliveryState.success({required List<ProductModel> data}) = _Success;
}