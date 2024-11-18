import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/app/data/models/image_link_model/image_link_model.dart';
import 'package:hardwarepasal/src/app/data/source/app_source.dart';
import 'package:hardwarepasal/src/app/domain/repository/app_data_repository.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:injectable/injectable.dart';

import '../../../core/errors/app_exceptions.dart';
import '../../../core/helpers/storage_helper.dart';
import '../../../core/network/network_info.dart';

@LazySingleton(as: AppDataRepository)
class AppDataRepositoryImpl implements AppDataRepository{
  final AppDataSource _appDataSource;
  final NetworkInfo _networkInfo;
  final StorageHelper _helper;

  const AppDataRepositoryImpl(
      this._appDataSource,
      this._networkInfo,
      this._helper,
      );

  @override
  Future<Either<AppError, ApiResponse<ImageLinkResponseModel>>> getImageLinks() async{
    if(await _networkInfo.isConnected){
      try {
        final response = await _appDataSource.getImageLinks();
        return right(ApiResponse(
          data: response.data,
          message: response.message,
          error: response.error,
        ));
      } on AppException catch (e) {
        return left(AppError.serverError(message: e.message));
      }

    }else{
      return const Left(AppError.noInternet());

    }
  }

}