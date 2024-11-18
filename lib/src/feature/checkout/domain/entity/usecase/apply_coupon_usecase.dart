import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/params/apply_coupon_params.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/coupon_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/repository/apply_coupon_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';

@lazySingleton
class ApplyCouponUsecase extends UseCase<ApiResponse<CouponResponseModel>, ApplyCouponParams>{
  final ApplyCouponRepository _applyCouponRepository;
  ApplyCouponUsecase(this._applyCouponRepository);

  @override
  Future<Either<AppError, ApiResponse<CouponResponseModel>>> call(ApplyCouponParams params) => _applyCouponRepository.applyCoupon(couponCode: params.couponCode, products: params.products);
}