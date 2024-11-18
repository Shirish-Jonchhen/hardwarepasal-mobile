import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/checkout_model.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/entity/params/checkout_params.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/repository/checkout_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';

@lazySingleton
class CheckoutUsecase extends UseCase<ApiResponse<CheckoutResponseModel>, CheckoutParams>{
  final CheckoutRepository _checkoutRepository;
  CheckoutUsecase(this._checkoutRepository);

  @override
  Future<Either<AppError, ApiResponse<CheckoutResponseModel>>> call(CheckoutParams params) => _checkoutRepository.getCheckout(cuponCode: params.cuponCode, products: params.products);
}