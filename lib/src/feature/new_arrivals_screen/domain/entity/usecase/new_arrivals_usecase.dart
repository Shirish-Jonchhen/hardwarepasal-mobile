import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/model/new_arrivals_response_model/new_arrivals_response_model.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/domain/repository/new_arrivals_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../params/new_arrival_params.dart';

@lazySingleton
class NewArrivalsUsecase extends UseCase<ApiResponse<NewArrivalsResponseModel>, NewArrivalParams>{
  final NewArrivalsRepository _repository;
  NewArrivalsUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<NewArrivalsResponseModel>>> call(NewArrivalParams params) => _repository.getNewArrivals(params.page);

}