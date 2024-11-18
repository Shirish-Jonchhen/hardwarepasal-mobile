import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/coupon_request_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../models/coupon_response_model.dart';

abstract class ApplyCouponDataSource {
  Future<ApiResponse<CouponResponseModel>> applyCoupon({
    required CouponRequestModel applyCouponModel,
  });
}

class ApplyCouponSourceImpl implements ApplyCouponDataSource {

  const ApplyCouponSourceImpl(@Named('authenticated') Dio dio, this._logger)
      : _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<CouponResponseModel>> applyCoupon({required CouponRequestModel applyCouponModel}) async{
    try {
      final response = await _dio.post('/apply-coupon',
        data: applyCouponModel.toJson(),
      );
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        print(response.data);
        // print(ImePayDataModel.fromJson(response.data["data"]));
        return ApiResponse(
          data: CouponResponseModel.fromJson(response.data),
          message: response.data["message"],
          error: false,
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }

}
