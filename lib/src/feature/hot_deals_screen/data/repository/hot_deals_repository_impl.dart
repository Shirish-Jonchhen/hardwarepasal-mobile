import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/hot_deals_repository.dart';
import '../model/hot_deals_response_model/hot_deals_response_model.dart';
import '../source/hot_deals_data_source.dart';


@LazySingleton(as: HotDealsRepository)
class HotDealsRepositoryImpl implements HotDealsRepository {
  const HotDealsRepositoryImpl(this._arrivalsDataSource, this._networkInfo);

  final HotDealsDataSource _arrivalsDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<HotDealsResponseModel>>> getHotDeals(int page) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _arrivalsDataSource.getHotDeals(page);
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