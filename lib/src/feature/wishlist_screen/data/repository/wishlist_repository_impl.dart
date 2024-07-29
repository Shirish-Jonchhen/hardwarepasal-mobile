import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../item_detail_screen/data/models/cart_item_model/cart_item_model.dart';
import '../../domain/repository/wishlist_repository.dart';
import '../source/wishlist_source.dart';

@LazySingleton(as: WishlistRepository)
class WishlistRepositoryImpl implements WishlistRepository {
  const WishlistRepositoryImpl(this._wishlistDataSource);

  final WishlistDataSource _wishlistDataSource;

  @override
  Future<Either<AppError, ApiResponse<List<CartItemModel>>>>
      getWishList() async {
    try {
      final response = await _wishlistDataSource.getWishList();
      return Right(
        ApiResponse(
          data: response.data,
          message: response.message,
        ),
      );
    } on AppException catch (e) {
      return Left(AppError.serverError(message: e.message));
    }
  }

  @override
  Future<Either<AppError, ApiResponse<int>>> addWishList(ProductModel product) async{
    try {
      final response = await _wishlistDataSource.addWishList(product);
      return Right(
        ApiResponse(
          data: response.data,
          message: response.message,
        ),
      );
    } on AppException catch (e) {
      return Left(AppError.serverError(message: e.message));
    }
  }

  @override
  Future<Either<AppError, ApiResponse<void>>> removeWishList(int productId) async{
    try {
      final response = await _wishlistDataSource.removeWishList(productId);
      return Right(
        ApiResponse(
          data: null,
          message: response.message,
        ),
      );
    } on AppException catch (e) {
      return Left(AppError.serverError(message: e.message));
    }
  }
}