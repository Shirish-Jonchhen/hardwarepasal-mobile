import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/cart_model/cart_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/update_cart_model/update_cart_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/params/remove_from_cart_params.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/params/update_cart_params.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../repository/cart_data_repository.dart';

@lazySingleton
class UpdateCartUsecase extends UseCase<ApiResponse<UpdateCartModel>, UpdateCartParams> {
  final CartDataRepository _repository;
  UpdateCartUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<UpdateCartModel>>> call(UpdateCartParams params) => _repository.updateCart(params.productId, params.quantity);
}