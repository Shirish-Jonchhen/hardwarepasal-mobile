import 'package:equatable/equatable.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

class AddWishListParams extends Equatable {
  final ProductModel product;

  const AddWishListParams({required this.product});

  @override
  List<Object?> get props => [product];
}