import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/brand_details_repository/brand_details_repository.dart';
import '../model/brand_details_model/brand_details_model.dart';
import '../source/brand_details_source.dart';

@LazySingleton(as: BrandDetailsRepository)
class BrandDetailsRepositoryImpl implements BrandDetailsRepository{
  const BrandDetailsRepositoryImpl(this._brandDetailsDataSource, this._networkInfo);

  final BrandDetailsDataSource _brandDetailsDataSource;
  final NetworkInfo _networkInfo;


  @override
  Future<Either<AppError, ApiResponse<BrandDetailsResponseModel>>> getBrandDetails({required String slug}) async{
    if(await _networkInfo.isConnected){
      try {
        final response = await _brandDetailsDataSource.getBrandDetails(slug: slug);
        return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    }else{
      return const Left(AppError.noInternet());
    }
  }
}