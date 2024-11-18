import 'package:equatable/equatable.dart';

class ApplyCouponParams extends Equatable {
  final String cuponCode;
  final List<Map<String, dynamic>> products;


  const ApplyCouponParams({
    required this.cuponCode,
    required this.products,

  });

  @override
  List<Object?> get props => [cuponCode, products];
}