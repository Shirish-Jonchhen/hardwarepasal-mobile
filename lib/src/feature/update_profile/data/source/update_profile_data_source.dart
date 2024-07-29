import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/user_model.dart';
import 'package:hardwarepasal/src/feature/update_profile/data/model/update_user_model/update_user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/helpers/storage_helper.dart';

abstract class UpdateProfileDataSource {
  Future<ApiResponse<UpdateUserModel>> updateUserDetails({String? firstName, String? lastName, String? address, String? contact, String? imageUrl});
}

@LazySingleton(as: UpdateProfileDataSource)
class UpdateProfileDataSourceImpl implements UpdateProfileDataSource {
  const UpdateProfileDataSourceImpl(@Named('authenticated') Dio dio, this._logger)
      : _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<UpdateUserModel>> updateUserDetails({String? firstName, String? lastName, String? address, String? contact, String? imageUrl}) async {
    try{
      FormData formData = FormData.fromMap({
        'first_name': firstName,
        'last_name': lastName,
        'address': address,
        'contact': contact,
        'image': (imageUrl != null)
            ? await MultipartFile.fromFile(imageUrl, filename: '${imageUrl}.jpg')
            : null,
      });
      final response = await _dio.post('/user/update-profile', data: formData);
      if (response.statusCode == 200) {
        return ApiResponse(
          data: UpdateUserModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    }on DioError catch (e) {
      print(e);
      throw AppException.fromDioError(e);
    }
  }
}