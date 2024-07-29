part of 'remove_wish_list_cubit.dart';

@freezed
class RemoveWishListState with _$RemoveWishListState {
  const factory RemoveWishListState.initial() = _Initial;
  const factory RemoveWishListState.loading() = _Loading;
  const factory RemoveWishListState.error(String message) = _Error;
  const factory RemoveWishListState.noInternet() = _NoInternet;
  const factory RemoveWishListState.success() = _Success;
}