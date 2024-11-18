// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_supplier_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductSupplierModelImpl _$$ProductSupplierModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductSupplierModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      status: json['status'] as String?,
      created_by: json['created_by'] as int?,
      updated_by: json['updated_by'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      markup_percent: json['markup_percent'] as int?,
      code: json['code'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$ProductSupplierModelImplToJson(
        _$ProductSupplierModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'slug': instance.slug,
      'status': instance.status,
      'created_by': instance.created_by,
      'updated_by': instance.updated_by,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'markup_percent': instance.markup_percent,
      'code': instance.code,
      'phone': instance.phone,
      'email': instance.email,
    };
