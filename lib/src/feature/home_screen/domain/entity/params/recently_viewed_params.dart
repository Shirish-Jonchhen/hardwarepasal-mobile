import 'package:equatable/equatable.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

class RecentlyViewedParams extends Equatable {
  final ProductModel productModel;


  const RecentlyViewedParams({
    required this.productModel,

  });

  @override
  List<Object?> get props => [productModel];
}