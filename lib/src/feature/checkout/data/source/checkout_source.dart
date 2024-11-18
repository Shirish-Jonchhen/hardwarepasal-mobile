import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../models/checkout_model.dart';

abstract class CheckoutDataSource {
  Future<ApiResponse<CheckoutResponseModel>> getCheckout({
    required String cuponCode,
    required List<Map<String, dynamic>> products,
  });
}

@LazySingleton(as: CheckoutDataSource)
class CheckoutDataSourceImpl implements CheckoutDataSource {
  const CheckoutDataSourceImpl(@Named('authenticated') Dio dio, this._logger): _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<CheckoutResponseModel>> getCheckout({required String cuponCode, required List<Map<String, dynamic>> products}) async {
    try {
      final response = await _dio.post('cart/checkout',
        data: {
          'coupon_code': cuponCode,
          'products': products,
        },
      );
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        print(response.data);
        Map<String, dynamic> res = response.data;
        res["data"]["data"]["districts"] = response.data["data"]["data"]["districts"].values.toList();
        return ApiResponse(
          data: CheckoutResponseModel.fromJson(res),
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