import 'package:dio/dio.dart';
import '../../../core/api_response/api_response.dart';
import '../../../core/errors/app_exceptions.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../models/image_link_model/image_link_model.dart';

abstract class AppDataSource {
  Future<ApiResponse<ImageLinkResponseModel>> getImageLinks();
}

@LazySingleton(as: AppDataSource)
class AppDataSourceImpl implements AppDataSource {
  const AppDataSourceImpl(@Named('un-authenticated') Dio dio, this._logger)
      : _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<ImageLinkResponseModel>> getImageLinks() async {
    // TODO: implement getImageLinks
    try {
      final response = await _dio.get('/image-urls');
      if (response.statusCode == 200) {
        return ApiResponse(
          data: ImageLinkResponseModel.fromJson(response.data),
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