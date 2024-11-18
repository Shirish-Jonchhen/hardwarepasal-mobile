
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_supplier_model.freezed.dart';
part 'product_supplier_model.g.dart';

@freezed
class ProductSupplierModel with _$ProductSupplierModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductSupplierModel({
    int? id,
    String? name,
    String? description,
    String? slug,
    String? status,
    int? created_by,
    int? updated_by,
    String? created_at,
    String? updated_at,
    int? markup_percent,
    String? code,
    String? phone,
    String? email,
  }) = _ProductSupplierModel;

  factory ProductSupplierModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSupplierModelFromJson(json);

}