import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/item_detail_repository.dart';
import '../models/product_detail_model/product_detail_model.dart';
import '../source/item_detail_data_source.dart';

@LazySingleton(as: ItemDetailRepository)
class ItemDetailRepositoryImpl implements ItemDetailRepository {
  const ItemDetailRepositoryImpl(this._itemDetailDataSource, this._networkInfo);

  final ItemDetailDataSource _itemDetailDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<ProductDetailModel>>> getItemDetail({required String slug}) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _itemDetailDataSource.getItemDetail(slug: slug);
        return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    }else{
      return const Left(AppError.noInternet());
    }
  }

}