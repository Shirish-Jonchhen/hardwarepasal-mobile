import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../model/my_orders_model/my_orders_model.dart';

abstract class MyOrdersDataSource{
  Future<ApiResponse<MyOrdersModel>> getMyOrders(int page);
}


@LazySingleton(as: MyOrdersDataSource)
class MyOrdersDataSourceImpl implements MyOrdersDataSource{
  const MyOrdersDataSourceImpl(
      @Named('authenticated') Dio dio,
      this._logger,
      ): _dio = dio;

  final Dio _dio;
  final Logger _logger;
  @override
  Future<ApiResponse<MyOrdersModel>> getMyOrders(int page) async {
    try {
      final response = await _dio.get(
        'orders?page=$page',
      );
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: MyOrdersModel.fromJson(response.data),
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