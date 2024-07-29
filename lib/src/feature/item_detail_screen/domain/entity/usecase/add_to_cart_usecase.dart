import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/usecase/usecase.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/add_to_cart_model/add_to_cart_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/params/add_to_cart_params.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/app_error.dart';
import '../../repository/add_to_cart_repository.dart';

@lazySingleton
class AddToCartUsecase extends UseCase<ApiResponse<AddToCartModel>, AddToCartParams>{
  final AddToCartRepository _repository;
  AddToCartUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<AddToCartModel>>> call(AddToCartParams params) => _repository.addToCart(productId: params.productId, quantity: params.quantity);
}