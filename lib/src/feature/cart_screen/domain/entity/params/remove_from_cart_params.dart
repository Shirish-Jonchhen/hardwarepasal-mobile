import 'package:equatable/equatable.dart';

class RemoveFromCartParams extends Equatable{
  final int productId;

  const RemoveFromCartParams({
    required this.productId,
  });

  @override
  List<Object?> get props => [productId];
}