import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/app/domain/repository/app_data_repository.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/cart_model/cart_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/quatation_model/quotation_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/params/apply_coupon_params.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/params/quotation_email_params.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/params/remove_from_cart_params.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/apply_coupon_code_repository.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/quotation_email_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../repository/cart_data_repository.dart';

@lazySingleton
class QuotationEmailUsecase extends UseCase<ApiResponse<QuotationModel>, QuotationEmailParams> {
  final QuotationEmailRepository _repository;
  QuotationEmailUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<QuotationModel>>> call(QuotationEmailParams params) => _repository.quotationEmail(params.email);
}