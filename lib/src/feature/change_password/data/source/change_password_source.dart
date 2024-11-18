import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/change_password/data/model/change_password_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../auth/data/models/user_model.dart';

abstract class ChangePasswordSource {
  Future<ApiResponse<ChangePasswordModel>> changePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  });
}

@LazySingleton(as: ChangePasswordSource)
class ChangePasswordSourceImpl implements ChangePasswordSource{
  const ChangePasswordSourceImpl(@Named('authenticated') Dio dio, this._logger)
      : _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<ChangePasswordModel>> changePassword({required String oldPassword, required String newPassword, required String confirmPassword}) async{
    try {
      final response = await _dio.post('reset-password', data: {
        'current_password': oldPassword,
        'new_password': newPassword,
        'confirm_password': confirmPassword,
      });
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: ChangePasswordModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      print("====================================");
      print(e);
      print("====================================");
      throw AppException.fromDioError(e);
    }
  }

}

