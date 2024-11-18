import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/model/new_arrivals_response_model/new_arrivals_response_model.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../data/model/hot_deals_response_model/hot_deals_response_model.dart';

abstract class HotDealsRepository {
  Future<Either<AppError, ApiResponse<HotDealsResponseModel>>> getHotDeals(int page);
}