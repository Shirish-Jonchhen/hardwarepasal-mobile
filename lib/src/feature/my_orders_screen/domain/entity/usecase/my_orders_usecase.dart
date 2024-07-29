import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/model/my_orders_model/my_orders_model.dart';
import '../../repository/my_orders_repository.dart';

@lazySingleton
class MyOrdersUsecase extends UseCase<ApiResponse<MyOrdersModel>, NoParams>{
  final MyOrdersRepository _repository;
  MyOrdersUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<MyOrdersModel>>> call(NoParams params) => _repository.getMyOrders();

}