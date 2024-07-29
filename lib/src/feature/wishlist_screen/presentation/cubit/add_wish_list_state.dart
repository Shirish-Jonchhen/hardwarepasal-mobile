part of 'add_wish_list_cubit.dart';

@freezed
class AddWishListState with _$AddWishListState {
  const factory AddWishListState.initial() = _Initial;
  const factory AddWishListState.loading() = _Loading;
  const factory AddWishListState.error(String message) = _Error;
  const factory AddWishListState.noInternet() = _NoInternet;
  const factory AddWishListState.success({required int result}) = _Success;
}
