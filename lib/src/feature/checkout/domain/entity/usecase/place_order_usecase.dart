import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/checkout_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/place_order_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/entity/params/checkout_params.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/entity/params/place_order_params.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/repository/checkout_repository.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/repository/place_order_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';

@lazySingleton
class PlaceOrderUsecase extends UseCase<ApiResponse, PlaceOrderParams>{
  final PlaceOrderRepository _placeOrderRepository;
  PlaceOrderUsecase(this._placeOrderRepository);

  @override
  Future<Either<AppError, ApiResponse<PlaceOrderResponseModel>>> call(PlaceOrderParams params) => _placeOrderRepository.placeOrder(placeOrderModel: params.placeOrderModel);
}