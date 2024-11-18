import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/core/errors/app_exceptions.dart';
import 'package:hardwarepasal/src/core/network/network_info.dart';
import 'package:hardwarepasal/src/feature/search_screen/data/model/search_result/search_result.dart';
import 'package:hardwarepasal/src/feature/search_screen/data/model/search_result_model/search_result_model.dart';
import 'package:hardwarepasal/src/feature/search_screen/data/source/search_data_source.dart';
import 'package:hardwarepasal/src/feature/search_screen/domain/repository/search_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final SearchDataSource _searchDataSource;
  final NetworkInfo _networkInfo;

  const SearchRepositoryImpl(this._searchDataSource, this._networkInfo);

  @override
  Future<Either<AppError, ApiResponse<SearchResultModel>>> searchProducts({required String keyword}) async{
    if(await _networkInfo.isConnected){
      try {
        final response = await _searchDataSource.searchProducts(keyword: keyword);
        return Right(
          ApiResponse(
            data: response.data,
            message: response.message,
            error: response.error
          )
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    }else{
      return const Left(AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse<SearchResult>>> searchFilterProducts({required String searchText, int? sortBy, String? lowRange, String? highRange, String? discount, String? brand, String? brandSearch}) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _searchDataSource.searchFilterProducts(searchText: searchText, sortBy: sortBy, lowRange: lowRange, highRange: highRange, discount: discount, brand: brand, brandSearch: brandSearch);
        return Right(
            ApiResponse(
                data: response.data,
                message: response.message,
                error: response.error
            )
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    }else{
      return const Left(AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse<int>>> addSearchHistory(String search) async {
    try {
      final response = await _searchDataSource.addSearchHistory(search);
      return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error
          )
      );
    } on AppException catch (e) {
      return Left(AppError.serverError(message: e.message));
    }
  }

  @override
  Future<Either<AppError, ApiResponse<int>>> clearSearchHistory() async {
    try {
      final response = await _searchDataSource.clearSearchHistory();
      return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error
          )
      );
    } on AppException catch (e) {
      return Left(AppError.serverError(message: e.message));
    }
  }

  @override
  Future<Either<AppError, ApiResponse<List<String>>>> getSearchHistory() async {
    try {
      final response = await _searchDataSource.getSearchHistory();
      return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error
          )
      );
    } on AppException catch (e) {
      return Left(AppError.serverError(message: e.message));
    }
  }
}