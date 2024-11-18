import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/feature/search_screen/data/model/search_result/search_result.dart';
import 'package:hardwarepasal/src/feature/search_screen/data/model/search_result_model/search_result_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/helpers/storage_helper.dart';

abstract class SearchDataSource {
  Future<ApiResponse<SearchResultModel>> searchProducts(
      {required String keyword});
  Future<ApiResponse<SearchResult>> searchFilterProducts({
    required String searchText,
    int? sortBy,
    String? lowRange,
    String? highRange,
    String? discount,
    String? brand,
    String? brandSearch,
  });

  Future<ApiResponse<List<String>>> getSearchHistory();
  Future<ApiResponse<int>> addSearchHistory(String search);
  Future<ApiResponse<int>> clearSearchHistory();
}

@LazySingleton(as: SearchDataSource)
class SearchDataSourceImpl implements SearchDataSource {
  const SearchDataSourceImpl(@Named('un-authenticated') Dio dio, this._logger)
      : _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<SearchResultModel>> searchProducts(
      {required String keyword}) async {
    try {
      final response = await _dio.get('search-products?keywords=$keyword');
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: SearchResultModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse<SearchResult>> searchFilterProducts({
    required String searchText,
    int? sortBy,
    String? lowRange,
    String? highRange,
    String? discount,
    String? brand,
    String? brandSearch,
  }) async {
    StringBuffer sb = StringBuffer();
    sb.write('all-products?search=$searchText');
    if (sortBy != null) {
      sb.write('&sort_by=$sortBy');
    }
    if (lowRange != null && lowRange.isNotEmpty) {
      sb.write('&range%5B%5D=$lowRange');
    }
    if (highRange != null && highRange.isNotEmpty) {
      sb.write('&range%5B%5D=$highRange');
    }
    if (discount != null && discount.isNotEmpty) {
      sb.write('&discount=$discount');
    }
    if (brand != null && brand.isNotEmpty) {
      sb.write('&brand=$brand');
    }
    if (brandSearch != null && brandSearch.isNotEmpty) {
      sb.write('&brand_search=$brandSearch');
    }
    String finalURI = sb.toString();
    try {
      final response = await _dio.get(finalURI);
      if (response.statusCode == 200) {
        return ApiResponse(
          data: SearchResult.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse<List<String>>> getSearchHistory()async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    StorageHelper storageHelper = StorageHelper(storage);
    List<String> recent = await storageHelper.getSearchHistory();
    return ApiResponse(data: recent.reversed.toList(), message: 'message');
  }

  @override
  Future<ApiResponse<int>> addSearchHistory(String search) async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    StorageHelper storageHelper = StorageHelper(storage);
    int result = await storageHelper.addSearchHistory(value: search);
    return ApiResponse(data: result, message: 'message');
  }

  @override
  Future<ApiResponse<int>> clearSearchHistory() async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    StorageHelper storageHelper = StorageHelper(storage);
    int result = await storageHelper.clearSearchHistory();
    return ApiResponse(data: result, message: 'message');
  }
}
