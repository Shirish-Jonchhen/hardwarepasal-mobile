import 'package:equatable/equatable.dart';

class FreeDeliveryParams extends Equatable {
  final int page;


  const FreeDeliveryParams({
    required this.page,


  });

  @override
  List<Object?> get props => [page];
}