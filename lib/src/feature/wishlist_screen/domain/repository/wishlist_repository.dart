import 'package:dartz/dartz.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../home_screen/data/models/product_model/product_model.dart';
import '../../../item_detail_screen/data/models/cart_item_model/cart_item_model.dart';

abstract class WishlistRepository {
  Future<Either<AppError, ApiResponse<List<CartItemModel>>>> getWishList();
  Future<Either<AppError, ApiResponse<int>>> addWishList(ProductModel product);
  Future<Either<AppError, ApiResponse<void>>> removeWishList(int productId);
}