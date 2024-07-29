import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../repository/wishlist_repository.dart';
import '../params/add_wish_list_params.dart';

@lazySingleton
class AddWishListUsecase extends UseCase<ApiResponse<int>, AddWishListParams> {
  final WishlistRepository _repository;
  AddWishListUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<int>>> call(AddWishListParams params) => _repository.addWishList(params.product);

}