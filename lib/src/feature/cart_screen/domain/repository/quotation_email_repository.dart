import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/cart_model/cart_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/quatation_model/quotation_model.dart';

import '../../../../core/errors/app_error.dart';
import '../../data/models/update_cart_model/update_cart_model.dart';

abstract class QuotationEmailRepository {
  Future<Either<AppError, ApiResponse<QuotationModel>>> quotationEmail(String email);

}