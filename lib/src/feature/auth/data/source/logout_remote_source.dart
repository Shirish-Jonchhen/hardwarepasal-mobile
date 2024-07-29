import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/errors/app_exceptions.dart';
import '../models/logout_model.dart';
import '../../../../core/api_response/api_response.dart';

abstract class LogoutRemoteSource{
  Future<ApiResponse<LogoutModel>> logout();
}
@LazySingleton(as: LogoutRemoteSource)
class LogoutRemoteSourceImpl implements LogoutRemoteSource{
  const LogoutRemoteSourceImpl(@Named('authenticated') Dio dio, this._logger)
      : _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<LogoutModel>> logout() async{
    try {
      final response = await _dio.post('/logout');
      if (response.statusCode == 200) {
        return ApiResponse(
          data: LogoutModel.fromJson(response.data),
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