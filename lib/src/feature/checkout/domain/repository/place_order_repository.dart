import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/connectips_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/ime_pay_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/place_order_response_model.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../data/models/place_order_model.dart';

abstract class PlaceOrderRepository {
  Future<Either<AppError, ApiResponse<PlaceOrderResponseModel>>> placeOrder({
    required PlaceOrderModel placeOrderModel,
  });

  Future<Either<AppError, ApiResponse<ImePayResponseModel>>> imePayOrder({
    required PlaceOrderModel placeOrderModel,
  });


  Future<Either<AppError, ApiResponse<ConnectipsResponseModel>>> connectipsOrder({
    required PlaceOrderModel placeOrderModel,
  });
}