import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/checkout_usecase.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../cart_screen/domain/entity/params/apply_coupon_params.dart';
import '../../data/models/checkout_model.dart';
import '../../data/models/coupon_response_model.dart';
import '../../domain/entity/params/checkout_params.dart';
import '../../domain/entity/usecase/apply_coupon_usecase.dart';

part 'apply_coupon_state.dart';
part 'apply_coupon_cubit.freezed.dart';

@injectable
class ApplyCouponCubit extends Cubit<ApplyCouponState> {
  final ApplyCouponUsecase _applyCouponUsecase;

  ApplyCouponCubit(this._applyCouponUsecase)
      : super(ApplyCouponState.initial());

  void applyCoupon({required String couponCode, required List<ProductModel> products}) async {
    List<Map<String, dynamic>> productMaps = products.map((product) {
      return {
        'product_id': product.id,
        'quantity': product.quantity,
      };
    }).toList();
    emit(const ApplyCouponState.loading());
    final response = await _applyCouponUsecase.call(ApplyCouponParams(
      couponCode: couponCode,
      products: productMaps,
    ));
    response.fold(
          (l) => l.when(
        serverError: (message) => emit(ApplyCouponState.error(message: message)),
        noInternet: () => emit(const ApplyCouponState.noInternet()),
      ),
          (r) => emit(ApplyCouponState.success(data: r)),
    );

  }


}