import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/item_details_cubit.dart';
import 'package:injectable/injectable.dart';


import '../../data/models/add_to_cart_model/add_to_cart_model.dart';
import '../../domain/entity/params/add_to_cart_params.dart';
import '../../domain/entity/usecase/add_to_cart_usecase.dart';

part 'add_to_cart_state.dart';
part 'add_to_cart_cubit.freezed.dart';

@injectable
class AddToCartCubit extends Cubit<AddToCartState>{
  final AddToCartUsecase _addToCartUsecase;

  AddToCartCubit(this._addToCartUsecase) : super(AddToCartState.initial());

  void addToCart(String productId, String quantity) async {
    emit(AddToCartState.loading());
    final response = await _addToCartUsecase.call(AddToCartParams(productId: productId, quantity: quantity));
    response.fold(
      (l) => l.when(
        serverError: (message) => AddToCartState.error(message: message),
        noInternet: () => const AddToCartState.noInternet(),
      ),
      (r) => emit(AddToCartState.success(data: r.data!)),
    );
  }

}