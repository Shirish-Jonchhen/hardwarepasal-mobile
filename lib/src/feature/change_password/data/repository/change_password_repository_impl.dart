import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/core/network/network_info.dart';
import 'package:hardwarepasal/src/feature/change_password/data/model/change_password_model.dart';
import 'package:hardwarepasal/src/feature/change_password/data/source/change_password_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_exceptions.dart';
import '../../domain/repository/change_password_repository.dart';

@LazySingleton(as: ChangePasswordRepository)

class ChangePasswordRepositoryImpl implements ChangePasswordRepository{

  const ChangePasswordRepositoryImpl(this._changePasswordSource, this._networkInfo);

  final ChangePasswordSource _changePasswordSource;

  final NetworkInfo _networkInfo;
  @override
  Future<Either<AppError, ApiResponse<ChangePasswordModel>>> changePassword({required String oldPassword, required String newPassword, required String confirmPassword}) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _changePasswordSource.changePassword(
          oldPassword: oldPassword,
          newPassword: newPassword,
          confirmPassword: confirmPassword,
        );

        return right(ApiResponse(
          data: response.data,
          message: response.message,
          error: response.error,
          // errors: response.errors,
        ));
      } on AppException catch (e) {
        return left(AppError.serverError(message: e.message));
      }

    }else{
      return const Left(AppError.noInternet());

    }
  }

}