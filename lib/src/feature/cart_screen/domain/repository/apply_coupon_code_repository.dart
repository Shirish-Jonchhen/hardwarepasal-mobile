import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/cart_model/cart_model.dart';

import '../../../../core/errors/app_error.dart';
import '../../data/models/update_cart_model/update_cart_model.dart';

abstract class ApplyCouponCodeRepository {
  Future<Either<AppError, ApiResponse<dynamic>>> applyCoupon(String couponCode, List<Map<String, dynamic>> products);
}