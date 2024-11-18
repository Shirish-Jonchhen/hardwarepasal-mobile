import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../models/product_detail_model/product_detail_model.dart';

abstract class ItemDetailDataSource {
  Future<ApiResponse<ProductDetailModel>> getItemDetail({
    required String slug,
  });
}

@LazySingleton(as: ItemDetailDataSource)
class ItemDetailDataSourceImpl implements ItemDetailDataSource {
  const ItemDetailDataSourceImpl(@Named('un-authenticated') Dio dio, this._logger): _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<ProductDetailModel>> getItemDetail({required String slug}) async {
    try {
      final response = await _dio.get('/fetch-single-product/$slug');
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: ProductDetailModel.fromJson(response.data),
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