part of 'add_to_cart_cubit.dart';

@freezed
class AddToCartState with _$AddToCartState {
  const factory AddToCartState.initial() = _Initial;
  const factory AddToCartState.loading() = _Loading;
  const factory AddToCartState.error({required String message}) = _Error;
  const factory AddToCartState.noInternet() = _NoInternet;
  const factory AddToCartState.success({required AddToCartModel data}) = _Success;
}