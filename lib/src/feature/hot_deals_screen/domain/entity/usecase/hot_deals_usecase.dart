import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/model/new_arrivals_response_model/new_arrivals_response_model.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/domain/repository/new_arrivals_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../new_arrivals_screen/domain/entity/params/new_arrival_params.dart';
import '../../../data/model/hot_deals_response_model/hot_deals_response_model.dart';
import '../../repository/hot_deals_repository.dart';
import '../params/hot_deals_params.dart';

@lazySingleton
class HotDealsUsecase extends UseCase<ApiResponse<HotDealsResponseModel>, HotDealsParams>{
  final HotDealsRepository _repository;
  HotDealsUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<HotDealsResponseModel>>> call(HotDealsParams params) => _repository.getHotDeals(params.page);

}