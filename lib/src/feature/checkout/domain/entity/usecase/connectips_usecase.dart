import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/connectips_response_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../repository/place_order_repository.dart';
import '../params/place_order_params.dart';

@lazySingleton
class ConnectipsUsecase extends UseCase<ApiResponse, PlaceOrderParams> {
  final PlaceOrderRepository _placeOrderRepository;

  ConnectipsUsecase(this._placeOrderRepository);

  @override
  Future<Either<AppError, ApiResponse<ConnectipsResponseModel>>> call(
          PlaceOrderParams params) =>
      _placeOrderRepository.connectipsOrder(
          placeOrderModel: params.placeOrderModel);
}
