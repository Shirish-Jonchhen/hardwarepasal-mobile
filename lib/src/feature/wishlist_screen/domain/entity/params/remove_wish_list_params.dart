import 'package:equatable/equatable.dart';

class RemoveWishListParams extends Equatable {
  final int productId;

  const RemoveWishListParams({required this.productId});

  @override
  List<Object?> get props => [productId];
}