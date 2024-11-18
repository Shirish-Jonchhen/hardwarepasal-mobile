import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/model/new_arrivals_response_model/new_arrivals_response_model.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/domain/repository/new_arrivals_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/model/free_delivery_response_model/free_delivery_response_model.dart';
import '../../repository/free_delivery_repository.dart';
import '../params/free_delivery_params.dart';


@lazySingleton
class FreeDeliveryUsecase extends UseCase<ApiResponse<FreeDeliveryResponseModel>, FreeDeliveryParams>{
  final FreeDeliveryRepository _repository;
  FreeDeliveryUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<FreeDeliveryResponseModel>>> call(FreeDeliveryParams params) => _repository.getFreeDelivery(params.page);

}