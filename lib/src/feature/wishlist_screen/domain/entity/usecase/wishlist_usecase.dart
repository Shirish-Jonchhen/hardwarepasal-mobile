import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../cart_screen/data/models/cart_model/cart_model.dart';
import '../../../../item_detail_screen/data/models/cart_item_model/cart_item_model.dart';
import '../../repository/wishlist_repository.dart';

@lazySingleton
class WishlistUsecase extends UseCase<ApiResponse<List<CartItemModel>>, NoParams> {
  final WishlistRepository _repository;
  WishlistUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<List<CartItemModel>>>> call(NoParams params) => _repository.getWishList();

}
