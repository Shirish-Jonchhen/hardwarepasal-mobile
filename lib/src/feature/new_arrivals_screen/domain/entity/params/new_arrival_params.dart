import 'package:equatable/equatable.dart';

class NewArrivalParams extends Equatable {
  final int page;


  const NewArrivalParams({
    required this.page,


  });

  @override
  List<Object?> get props => [page];
}