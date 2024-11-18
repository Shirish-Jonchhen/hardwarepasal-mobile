import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/errors/app_exceptions.dart';
import 'package:hardwarepasal/src/core/network/network_info.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/source/apply_coupon_data_source.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/coupon_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/repository/apply_coupon_repository.dart';

import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';

@LazySingleton(as: ApplyCouponRepository)
class ApplyCouponRepositoryImpl implements ApplyCouponRepository {
  const ApplyCouponRepositoryImpl(this._applyCouponDataSource, this._networkInfo);

  final ApplyCouponDataSource _applyCouponDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<CouponResponseModel>>> applyCoupon(
      {required String couponCode,required List<Map<String, dynamic>> products}) async {
    if(await _networkInfo.isConnected){
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
    }else{
      return const Left(AppError.noInternet());
    }
  }



}
