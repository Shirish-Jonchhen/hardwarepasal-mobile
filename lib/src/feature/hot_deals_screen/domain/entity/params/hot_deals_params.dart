import 'package:equatable/equatable.dart';

class HotDealsParams extends Equatable {
  final int page;


  const HotDealsParams({
    required this.page,


  });

  @override
  List<Object?> get props => [page];
}