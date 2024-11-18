import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/model/new_arrivals_response_model/new_arrivals_response_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';

abstract class NewArrivalsDataSource{
  Future<ApiResponse<NewArrivalsResponseModel>> getNewArrivals(int page);
}


@LazySingleton(as: NewArrivalsDataSource)
class NewArrivalsDataSourceImpl implements NewArrivalsDataSource{
  const NewArrivalsDataSourceImpl(
      @Named('un-authenticated') Dio dio,
      this._logger,
      ): _dio = dio;

  final Dio _dio;
  final Logger _logger;
  @override
  Future<ApiResponse<NewArrivalsResponseModel>> getNewArrivals(int page) async {
    try {
      final response = await _dio.get(
        'new-arrivals?page=$page',
      );
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: NewArrivalsResponseModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }

}