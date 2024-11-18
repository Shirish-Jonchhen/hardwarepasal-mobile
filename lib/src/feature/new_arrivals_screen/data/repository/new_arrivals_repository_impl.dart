import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/model/new_arrivals_response_model/new_arrivals_response_model.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/source/new_arrivals_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/new_arrivals_repository.dart';


@LazySingleton(as: NewArrivalsRepository)
class NewArrivalsRepositoryImpl implements NewArrivalsRepository {
  const NewArrivalsRepositoryImpl(this._arrivalsDataSource, this._networkInfo);

  final NewArrivalsDataSource _arrivalsDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<NewArrivalsResponseModel>>> getNewArrivals(int page) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _arrivalsDataSource.getNewArrivals(page);
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