import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/coupon_response_model.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';

abstract class ApplyCouponRepository {
  Future<Either<AppError,ApiResponse<CouponResponseModel>>> applyCoupon(
      {required String couponCode,required List<Map<String, dynamic>> products});
}