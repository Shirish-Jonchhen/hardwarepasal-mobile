import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/checkout_usecase.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../data/models/checkout_model.dart';
import '../../domain/entity/params/checkout_params.dart';

part 'checkout_state.dart';
part 'checkout_cubit.freezed.dart';

@injectable
class CheckoutCubit extends Cubit<CheckoutState> {
  final CheckoutUsecase _checkoutUsecase;

  CheckoutCubit(this._checkoutUsecase)
      : super(CheckoutState.initial());

  void checkout({required String couponCode, required List<ProductModel> products}) async {
    List<Map<String, dynamic>> productMaps = products.map((product) {
      return {
        'product_id': product.id,
        'quantity': product.quantity,
      };
    }).toList();
    emit(const CheckoutState.loading());
    final response = await _checkoutUsecase.call(CheckoutParams(
      cuponCode: couponCode,
      products: productMaps,
    ));
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(CheckoutState.error(message: message)),
        noInternet: () => emit(const CheckoutState.noInternet()),
      ),
      (r) => emit(CheckoutState.success(data: r)),
    );

}


}