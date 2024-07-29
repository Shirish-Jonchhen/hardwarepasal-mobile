import 'package:equatable/equatable.dart';

class ApiResponse<T> extends Equatable{
  ApiResponse({this.data, this.message, this.error});

  final T? data;
  final String? message;
  final Object? error;

  @override
  List<Object?> get props => [data, message, error];

}