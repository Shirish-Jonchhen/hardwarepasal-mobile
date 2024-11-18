import 'package:equatable/equatable.dart';

class BrandsParams extends Equatable{
  final int? page;

  const BrandsParams({
    this.page
  });

  @override
  List<Object?> get props => [page];
}