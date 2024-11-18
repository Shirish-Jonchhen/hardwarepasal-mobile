import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/my_orders_repository.dart';
import '../model/my_orders_model/my_orders_model.dart';
import '../source/my_orders_data_source.dart';

@LazySingleton(as: MyOrdersRepository)
class MyOrdersRepositoryImpl implements MyOrdersRepository {
  const MyOrdersRepositoryImpl(this._myOrdersDataSource, this._networkInfo);

  final MyOrdersDataSource _myOrdersDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<MyOrdersModel>>> getMyOrders(int page) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _myOrdersDataSource.getMyOrders(page);
        return Right(
          ApiResponse(
            data: response.data,
            message: response.message,
            error: response.error,
          ),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    } else {
      return const Left(AppError.noInternet());
    }
  }
}