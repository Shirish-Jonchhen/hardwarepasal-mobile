import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/cart_model/cart_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/update_cart_model/update_cart_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/source/apply_coupon_data_source.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/source/cart_data_source.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/apply_coupon_code_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/cart_data_repository.dart';

@LazySingleton(as: ApplyCouponCodeRepository)
class ApplyCouponCodeRepositoryImpl implements ApplyCouponCodeRepository {
  const ApplyCouponCodeRepositoryImpl(this._applyCouponDataSource, this._networkInfo);

  final ApplyCouponDataSource _applyCouponDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse>> applyCoupon(String couponCode, List<Map<String, dynamic>> products) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _applyCouponDataSource.applyCoupon(couponCode, products);
        return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    } else {
      return const Left(AppError.noInternet());
    }
  }
  

}
