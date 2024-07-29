part of 'cart_data_cubit.dart';

@freezed
class CartDataState with _$CartDataState{
  const factory CartDataState.initial() = _Initial;
  const factory CartDataState.loading() = _Loading;
  const factory CartDataState.error({required String message}) = _Error;
  const factory CartDataState.noInternet() = _NoInternet;
  const factory CartDataState.success({required CartModel data}) = _Success;
}