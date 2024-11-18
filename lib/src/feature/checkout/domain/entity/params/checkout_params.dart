import 'package:equatable/equatable.dart';

class CheckoutParams extends Equatable {
  final String cuponCode;
  final List<Map<String, dynamic>> products;


  const CheckoutParams({
    required this.cuponCode,
    required this.products,

  });

  @override
  List<Object?> get props => [cuponCode, products];
}