import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../models/user_model.dart';

abstract class AuthRemoteSource {
  Future<ApiResponse<UserModel>> login({
    required String email,
    required String password,
  });

  Future<ApiResponse<UserModel>> register({
    required String firstName,
    required String lastName,
    required String contact,
    required String email,
    required String password,
    required String confirmPassword,
  });
}

@LazySingleton(as: AuthRemoteSource)
class AuthRemoteSourceImpl implements AuthRemoteSource {
  const AuthRemoteSourceImpl(@Named('un-authenticated') Dio dio, this._logger)
      : _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<UserModel>> login(
      {required String email, required String password}) async {
    try {
      final response = await _dio.post('/login', data: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: UserModel.fromJson(response.data),
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

  @override
  Future<ApiResponse<UserModel>> register({required String firstName, required String lastName, required String contact, required String email, required String password, required String confirmPassword }) async{
try {
      final response = await _dio.post('/register', data: {
        'first_name': firstName,
        'last_name': lastName,
        'contact': contact,
        'email': email,
        'password': password,
        'confirm_password': confirmPassword,
      });
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: UserModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
  print(e);
      throw AppException.fromDioError(e);
    }
  }
}
