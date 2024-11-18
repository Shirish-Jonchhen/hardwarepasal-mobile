import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/params/apply_coupon_params.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/apply_xoupon_usecase.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/cart_data_usecase.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/remove_from_cart_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../data/models/cart_model/cart_model.dart';
import '../../domain/entity/params/remove_from_cart_params.dart';
import '../../domain/entity/params/update_cart_params.dart';
import '../../domain/entity/usecase/update_cart_usecase.dart';

part 'apply_coupon_cubit.freezed.dart';
part 'apply_coupon_state.dart';

@injectable
class ApplyCouponCubit extends Cubit<ApplyCouponState>{
  final ApplyXouponUsecase _applyXouponUsecase;

  ApplyCouponCubit(this._applyXouponUsecase) : super(const ApplyCouponState.initial());

  void getCart(String couponCode, List<Map<String,dynamic>> products) async {
    final response = await _applyXouponUsecase.call(ApplyCouponParams(couponCode: couponCode, products: products));
    response.fold(
          (l) => l.when(
        serverError: (message) => emit(ApplyCouponState.error(message: message)),
        noInternet: () => emit(const ApplyCouponState.noInternet()),
      ),
          (r) => emit(ApplyCouponState.success(couponSuccess: r.data!)),
    );
  }

}