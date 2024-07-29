part of 'wishlist_cubit.dart';


@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState.initial() = _Initial;
  const factory WishlistState.loading() = _Loading;
  const factory WishlistState.error({required String message}) = _Error;
  const factory WishlistState.noInternet() = _NoInternet;
  const factory WishlistState.success({required List<CartItemModel> data}) = _Success;
}