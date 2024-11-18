import 'package:equatable/equatable.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/place_order_model.dart';

class PlaceOrderParams extends Equatable {
  final PlaceOrderModel placeOrderModel;


  const PlaceOrderParams({
    required this.placeOrderModel,
  });

  @override
  List<Object?> get props => [placeOrderModel];
}