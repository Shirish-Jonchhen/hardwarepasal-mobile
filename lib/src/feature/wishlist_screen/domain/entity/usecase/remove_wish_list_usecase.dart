import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../repository/wishlist_repository.dart';
import '../params/remove_wish_list_params.dart';

@lazySingleton
class RemoveWishListUsecase extends UseCase<ApiResponse<void>, RemoveWishListParams> {
  final WishlistRepository _repository;
  RemoveWishListUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<void>>> call(RemoveWishListParams params) => _repository.removeWishList(params.productId);
}