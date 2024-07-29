import 'package:equatable/equatable.dart';

class AllProductsParams extends Equatable {
  final int page;


  const AllProductsParams({
    required this.page,

  });

  @override
  List<Object?> get props => [page];
}