import 'package:equatable/equatable.dart';

class AddToCartParams extends Equatable{
  final String productId;
  final String quantity;

  const AddToCartParams({
    required this.productId,
    required this.quantity,
  });

  @override
  List<Object?> get props => [productId, quantity];
}