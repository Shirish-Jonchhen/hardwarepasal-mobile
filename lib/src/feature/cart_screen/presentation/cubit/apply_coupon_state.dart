part of 'apply_coupon_cubit.dart';


@freezed
class ApplyCouponState with _$ApplyCouponState{
  const factory ApplyCouponState.initial() = _Initial;
  const factory ApplyCouponState.loading() = _Loading;
  const factory ApplyCouponState.error({required String message}) = _Error;
  const factory ApplyCouponState.noInternet() = _NoInternet;
  const factory ApplyCouponState.success({required dynamic couponSuccess}) = _Success;
}