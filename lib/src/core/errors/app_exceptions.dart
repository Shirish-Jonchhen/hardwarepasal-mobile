import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exceptions.freezed.dart';

part 'app_exceptions.g.dart';

@freezed
class AppException with _$AppException {
  const AppException._();

  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AppException({
    required String message,
    int? statusCode,
    Map<String, dynamic>? errors,
  }) = _AppException;

  factory AppException.fromJson(Map<String, dynamic> json) =>
      _$AppExceptionFromJson(json);


  factory AppException.fromDioError(DioError e) {
    if (e.response?.statusCode == 422 || e.response?.statusCode == 401) {
      final errors = e.response?.data['message'];
      if (errors != null && errors is Map) {
        return AppException(
          message: e.response?.data['message'],
          errors: Map<String, dynamic>.from(errors),
          statusCode: 422,
        );
      } else if (e.response?.data['message'] != null) {
        return AppException(message: e.response?.data['message']);
      } else {
        return AppException(message: e.message);
      }
    } else if (e.response?.statusCode == 400 || e.response?.statusCode == 403) {
      return AppException(
        message: e.response!.data['error']['message']
            .toString()
            .replaceAll("[", "")
            .replaceAll("]", ""),
      );
    } else {
      return AppException(
          message: e.response?.data['message'] ?? 'Unauthorized');
    }
  }
}
