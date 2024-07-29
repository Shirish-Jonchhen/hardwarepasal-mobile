
import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/product_detail_model/product_detail_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/params/item_detail_params.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/item_detail_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/usecase/usecase.dart';

@lazySingleton
class ItemDetailUsecase extends UseCase<ApiResponse<ProductDetailModel>, ItemDetailParams>{
  final ItemDetailRepository _repository;
  ItemDetailUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<ProductDetailModel>>> call(ItemDetailParams params) => _repository.getItemDetail(slug: params.slug);

}