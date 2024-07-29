import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/cart_data_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/models/cart_model/cart_model.dart';

@lazySingleton
class CartDataUsecase extends UseCase<ApiResponse<CartModel>, NoParams> {
  final CartDataRepository _repository;
  CartDataUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<CartModel>>> call(NoParams params) => _repository.getCart();
}

