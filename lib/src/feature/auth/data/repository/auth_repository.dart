import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/core/errors/app_exceptions.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/logout_model.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/user_model.dart';
import 'package:hardwarepasal/src/feature/auth/data/source/auth_remote_source.dart';
import 'package:hardwarepasal/src/feature/auth/data/source/logout_remote_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_info.dart';
import '../../domain/repository/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {

  const AuthRepositoryImpl(
      this._authRemoteSource,
      this._logoutRemoteSource,
      this._networkInfo,
      this._helper,
      );

  final AuthRemoteSource _authRemoteSource;
  final LogoutRemoteSource _logoutRemoteSource;
  final NetworkInfo _networkInfo;
  final StorageHelper _helper;
  @override
  Future<Either<AppError, ApiResponse<UserModel>>> login({required String email, required String password}) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _authRemoteSource.login(
          email: email,
          password: password,
        );

        await _helper.setSession(model: response.data!);
    

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

  @override
  Future<Either<AppError, ApiResponse<UserModel>>> register({required String firstName, required String lastName, required String contact, required String email, required String password, required String confirmPassword }) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _authRemoteSource.register(
          firstName: firstName,
          lastName: lastName,
          contact: contact,
          email: email,
          password: password,
          confirmPassword: confirmPassword,
        );

        // await _helper.setSession(model: response.data);
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

  @override
  Future<Either<AppError, ApiResponse<LogoutModel>>> logout() async{
    if(await _networkInfo.isConnected){
      try {
        final response = await _logoutRemoteSource.logout();

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