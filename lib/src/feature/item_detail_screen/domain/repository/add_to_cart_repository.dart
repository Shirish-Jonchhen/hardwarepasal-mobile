import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/add_to_cart_model/add_to_cart_model.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';

abstract class AddToCartRepository {
  Future<Either<AppError, ApiResponse<AddToCartModel>>> addToCart({
    required String productId,
    required String quantity,
  });
}