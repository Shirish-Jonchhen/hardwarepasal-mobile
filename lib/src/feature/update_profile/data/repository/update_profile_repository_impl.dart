import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/update_profile/data/model/update_user_model/update_user_model.dart';
import 'package:hardwarepasal/src/feature/update_profile/data/source/update_profile_data_source.dart';
import 'package:hardwarepasal/src/feature/update_profile/domin/repository/update_profile_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/helpers/storage_helper.dart';
import '../../../../core/network/network_info.dart';
import '../../../auth/data/source/auth_remote_source.dart';

@LazySingleton(as: UpdateProfileRepository)
class UpdateProfileRepositoryImpl implements UpdateProfileRepository{
  const UpdateProfileRepositoryImpl(
      this._updateProfileDataSource,
      this._networkInfo,
      );

  final UpdateProfileDataSource _updateProfileDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<UpdateUserModel>>> updateProfile({String? firstName, String? lastName, String? address, String? contact, String? imageUrl}) async{
    if(await _networkInfo.isConnected){
      try {
        final response = await _updateProfileDataSource.updateUserDetails(
          firstName: firstName,
          address: address,
          contact: contact,
          imageUrl: imageUrl,
          lastName: lastName,
        );

        return right(ApiResponse<UpdateUserModel>(
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