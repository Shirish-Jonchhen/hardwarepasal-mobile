import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../home_screen/data/models/product_model/product_model.dart';
import '../../../item_detail_screen/data/models/cart_item_model/cart_item_model.dart';
import '../../domain/entity/params/add_wish_list_params.dart';
import '../../domain/entity/params/remove_wish_list_params.dart';
import '../../domain/entity/usecase/add_wish_list_usecase.dart';
import '../../domain/entity/usecase/remove_wish_list_usecase.dart';
import '../../domain/entity/usecase/wishlist_usecase.dart';

part 'wishlist_cubit.freezed.dart';

part 'wishlist_state.dart';

@injectable
class WishlistCubit extends Cubit<WishlistState> {
  final WishlistUsecase _wishlistUsecase;
  final AddWishListUsecase _addWishListUsecase;
  final RemoveWishListUsecase _removeWishListUsecase;

  WishlistCubit(this._wishlistUsecase, this._addWishListUsecase, this._removeWishListUsecase)
      : super(const WishlistState.initial());

  void getWishList() async {
    emit(WishlistState.loading());
    final response = await _wishlistUsecase.call(const NoParams());
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(WishlistState.error(message: message)),
        noInternet: () => emit(const WishlistState.noInternet()),
      ),
      (r) => emit(WishlistState.success(data: r.data!)),
    );
  }

  void addWishList(ProductModel product) async {
    emit(const WishlistState.loading());
    final response =
    await _addWishListUsecase.call(AddWishListParams(product: product));
    response.fold(
          (l) => l.when(
        serverError: (message) => emit(WishlistState.error(message: message)),
        noInternet: () => emit(const WishlistState.noInternet()),
      ),
          (r) {
        getWishList();
      },
    );
  }

  void removeWishlist(int productId) async {
    emit(const WishlistState.loading());
    final response = await _removeWishListUsecase.call(RemoveWishListParams(productId: productId));
    response.fold(
          (l) => l.when(
        serverError: (message) => emit(WishlistState.error(message: message)),
        noInternet: () => emit(const WishlistState.noInternet()),
      ),
          (r) {
        getWishList();
      },
    );
  }
}
