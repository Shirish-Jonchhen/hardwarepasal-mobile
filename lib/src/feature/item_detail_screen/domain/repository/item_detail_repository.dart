import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/product_detail_model/product_detail_model.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';

abstract class ItemDetailRepository {
  Future<Either<AppError, ApiResponse<ProductDetailModel>>> getItemDetail({
    required String slug,
  });
}