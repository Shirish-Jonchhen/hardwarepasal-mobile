import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/connectips_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/place_order_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/place_order_response_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../models/ime_pay_response_model.dart';

abstract class PlaceOrderDataSource {
  Future<ApiResponse<PlaceOrderResponseModel>> placeOrder({
    required PlaceOrderModel placeOrderModel,
  });

  Future<ApiResponse<ImePayResponseModel>> imePayOrder({
    required PlaceOrderModel placeOrderModel,
  });

  Future<ApiResponse<ConnectipsResponseModel>> connectipsOrder({
    required PlaceOrderModel placeOrderModel,
  });
}

@LazySingleton(as: PlaceOrderDataSource)
class PlaceOrderDataSourceImpl implements PlaceOrderDataSource {
  const PlaceOrderDataSourceImpl(@Named('authenticated') Dio dio, this._logger)
      : _dio = dio;

  final Dio _dio;
  final Logger _logger;



  @override
  Future<ApiResponse<PlaceOrderResponseModel>> placeOrder(
      {required PlaceOrderModel placeOrderModel}) async {
    try {
      final response = await _dio.post('/place-order',
        data: placeOrderModel.toJson(),
      );
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        print(
            "====================place order response===========================");
        print(response.data);
        return ApiResponse(
          data: PlaceOrderResponseModel.fromJson(response.data),
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

  @override
  Future<ApiResponse<ImePayResponseModel>> imePayOrder({required PlaceOrderModel placeOrderModel}) async {
    try {
      final response = await _dio.post('/place-order',
        data: placeOrderModel.toJson(),
      );
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        print(response.data);
        // print(ImePayDataModel.fromJson(response.data["data"]));
        return ApiResponse(
          data: ImePayResponseModel.fromJson(response.data),
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

  @override
  Future<ApiResponse<ConnectipsResponseModel>> connectipsOrder({required PlaceOrderModel placeOrderModel}) async{
    try {
      final response = await _dio.post('/place-order',
        data: placeOrderModel.toJson(),
      );
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        print(
            "====================place order response 123123321===========================");
        print(response.data);
        print(ConnectipsResponseModel.fromJson(response.data["data"]));
        return ApiResponse(
          data: ConnectipsResponseModel.fromJson(response.data),
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