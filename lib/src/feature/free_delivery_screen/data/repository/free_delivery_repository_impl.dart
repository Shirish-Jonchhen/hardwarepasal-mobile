import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/model/new_arrivals_response_model/new_arrivals_response_model.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/source/new_arrivals_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/free_delivery_repository.dart';
// import '../../domain/repository/new_arrivals_repository.dart';
import '../model/free_delivery_response_model/free_delivery_response_model.dart';
import '../source/free_delivery_data_source.dart';


@LazySingleton(as: FreeDeliveryRepository)
class FreeDeliveryRepositoryImpl implements FreeDeliveryRepository {
  const FreeDeliveryRepositoryImpl(this._arrivalsDataSource, this._networkInfo);

  final FreeDeliveryDataSource _arrivalsDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<FreeDeliveryResponseModel>>> getFreeDelivery(int page) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _arrivalsDataSource.getFreeDelivery(page);
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