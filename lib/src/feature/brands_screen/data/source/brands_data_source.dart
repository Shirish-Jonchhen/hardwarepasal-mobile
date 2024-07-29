import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';

abstract class BrandsDataSource {
  Future<ApiResponse<BrandsModel>> getBrands();
}

@LazySingleton(as: BrandsDataSource)
class BrandsDataSourceImpl implements BrandsDataSource {
  const BrandsDataSourceImpl(@Named('un-authenticated') Dio dio, this._logger): _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<BrandsModel>> getBrands() async {
    try {
      final response = await _dio.get('brand');
      if (response.statusCode == 200) {
        return ApiResponse(
          data: BrandsModel.fromJson(response.data),
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
