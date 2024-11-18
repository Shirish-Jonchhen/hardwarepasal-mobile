import 'package:equatable/equatable.dart';

class MyOrderParams extends Equatable {
  final int page;


  const MyOrderParams({
    required this.page,


  });

  @override
  List<Object?> get props => [page];
}