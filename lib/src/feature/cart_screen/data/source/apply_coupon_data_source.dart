import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';

abstract class ApplyCouponDataSource{
  Future<ApiResponse<dynamic>> applyCoupon(String couponCode, List<Map<String, dynamic>> products);
}

@LazySingleton(as: ApplyCouponDataSource)
class ApplyCouponDataSourceImpl implements ApplyCouponDataSource
{
  const ApplyCouponDataSourceImpl(@Named('authenticated') Dio dio, this._logger): _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse> applyCoupon(String couponCode, List<Map<String, dynamic>> products) async {
    try {
      final response = await _dio.post('apply-coupon',
      data: {
        "coupon_code": couponCode,
        "products": products
      });
      if (response.statusCode == 200) {
        print(response.data);
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }else{
          return ApiResponse(
            data: response.data,
            message: 'message',
          );
        }
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }
}