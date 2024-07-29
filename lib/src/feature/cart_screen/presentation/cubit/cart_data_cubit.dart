import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/cart_data_usecase.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/remove_from_cart_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../data/models/cart_model/cart_model.dart';
import '../../domain/entity/params/remove_from_cart_params.dart';
import '../../domain/entity/params/update_cart_params.dart';
import '../../domain/entity/usecase/update_cart_usecase.dart';

part 'cart_data_cubit.freezed.dart';
part 'cart_data_state.dart';

@injectable
class CartDataCubit extends Cubit<CartDataState>{
  final CartDataUsecase _cartDataUsecase;
  final RemoveFromCartUsecase  _removeFromCartUsecase;
  final UpdateCartUsecase _updateCartUsecase;

  CartDataCubit(this._cartDataUsecase, this._removeFromCartUsecase, this._updateCartUsecase) : super(const CartDataState.initial());

  void getCart(bool reload) async {
    if(reload){
      emit(CartDataState.loading());
    }
    final response = await _cartDataUsecase.call(const NoParams());
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(CartDataState.error(message: message)),
        noInternet: () => emit(const CartDataState.noInternet()),
      ),
      (r) => emit(CartDataState.success(data: r.data!)),
    );
  }

  void removeFromCart(int productId) async {
    final response = await _removeFromCartUsecase.call(RemoveFromCartParams(productId: productId));
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(CartDataState.error(message: message)),
        noInternet: () => emit(const CartDataState.noInternet()),
      ),
      (r){
        getCart(false);
      },
    );
  }

  void updateCart(int productId, int quantity) async {
    final response = await _updateCartUsecase.call(UpdateCartParams(productId: productId, quantity: quantity));
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(CartDataState.error(message: message)),
        noInternet: () => emit(const CartDataState.noInternet()),
      ),
      (r){
        getCart(false);
      },
    );
  }
}