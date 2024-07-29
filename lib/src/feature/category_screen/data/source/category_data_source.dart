import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../model/category_model/category_model.dart';

abstract class CategoryDataSource {
  Future<ApiResponse<CategoryModel>> getCategory();
}

@LazySingleton(as: CategoryDataSource)
class CategoryDataSourceImpl implements CategoryDataSource {
  const CategoryDataSourceImpl(@Named('un-authenticated') Dio dio, this._logger): _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<CategoryModel>> getCategory() async {
    try {
      final response = await _dio.get('product-categories');
      if (response.statusCode == 200) {
        return ApiResponse(
          data: CategoryModel.fromJson(response.data),
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
