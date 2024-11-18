import 'package:equatable/equatable.dart';

class ApplyCouponParams extends Equatable{
  final String couponCode;
  final List<Map<String, dynamic>> products;


  const ApplyCouponParams({
    required this.couponCode,
    required this.products,
  });

  @override
  List<Object?> get props => [couponCode, products];
}