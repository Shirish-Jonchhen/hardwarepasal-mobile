import 'package:equatable/equatable.dart';

class UpdateCartParams extends Equatable{
  final int productId;
  final int quantity;

  const UpdateCartParams({
    required this.productId,
    required this.quantity,
  });

  @override
  List<Object?> get props => [productId, quantity];
}