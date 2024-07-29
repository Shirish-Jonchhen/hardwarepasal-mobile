// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CartDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$CartDataModelImpl _$$CartDataModelImplFromJson(Map<String, dynamic> json) =>
    _$CartDataModelImpl(
      cartdata: (json['cartdata'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recently_viewed_product:
          (json['recently_viewed_product'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      voucher: json['voucher'] as List<dynamic>?,
      voucherlist: (json['voucherlist'] as List<dynamic>?)
          ?.map((e) => VoucherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      adslist: (json['adslist'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartDataModelImplToJson(_$CartDataModelImpl instance) =>
    <String, dynamic>{
      'cartdata': instance.cartdata?.map((e) => e.toJson()).toList(),
      'recently_viewed_product':
          instance.recently_viewed_product?.map((e) => e.toJson()).toList(),
      'voucher': instance.voucher,
      'voucherlist': instance.voucherlist?.map((e) => e.toJson()).toList(),
      'adslist': instance.adslist?.map((e) => e.toJson()).toList(),
      'product': instance.product?.toJson(),
    };

_$RemoveFromCartModelImpl _$$RemoveFromCartModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveFromCartModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] as List<dynamic>?,
    );

Map<String, dynamic> _$$RemoveFromCartModelImplToJson(
        _$RemoveFromCartModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
