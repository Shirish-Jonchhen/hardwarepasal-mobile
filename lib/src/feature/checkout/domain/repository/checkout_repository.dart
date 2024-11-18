import 'package:dartz/dartz.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../data/models/checkout_model.dart';

abstract class CheckoutRepository {
  Future<Either<AppError, ApiResponse<CheckoutResponseModel>>> getCheckout({
    required String cuponCode,
    required List<Map<String, dynamic>> products,
  });
}