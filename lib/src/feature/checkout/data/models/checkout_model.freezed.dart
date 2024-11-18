// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckoutResponseModel _$CheckoutResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CheckoutResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CheckoutResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CheckoutDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutResponseModelCopyWith<CheckoutResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutResponseModelCopyWith<$Res> {
  factory $CheckoutResponseModelCopyWith(CheckoutResponseModel value,
          $Res Function(CheckoutResponseModel) then) =
      _$CheckoutResponseModelCopyWithImpl<$Res, CheckoutResponseModel>;
  @useResult
  $Res call({int? code, String? message, CheckoutDataModel? data});

  $CheckoutDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CheckoutResponseModelCopyWithImpl<$Res,
        $Val extends CheckoutResponseModel>
    implements $CheckoutResponseModelCopyWith<$Res> {
  _$CheckoutResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckoutDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckoutDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CheckoutDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutResponseModelImplCopyWith<$Res>
    implements $CheckoutResponseModelCopyWith<$Res> {
  factory _$$CheckoutResponseModelImplCopyWith(
          _$CheckoutResponseModelImpl value,
          $Res Function(_$CheckoutResponseModelImpl) then) =
      __$$CheckoutResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, CheckoutDataModel? data});

  @override
  $CheckoutDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CheckoutResponseModelImplCopyWithImpl<$Res>
    extends _$CheckoutResponseModelCopyWithImpl<$Res,
        _$CheckoutResponseModelImpl>
    implements _$$CheckoutResponseModelImplCopyWith<$Res> {
  __$$CheckoutResponseModelImplCopyWithImpl(_$CheckoutResponseModelImpl _value,
      $Res Function(_$CheckoutResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CheckoutResponseModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckoutDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CheckoutResponseModelImpl implements _CheckoutResponseModel {
  const _$CheckoutResponseModelImpl({this.code, this.message, this.data});

  factory _$CheckoutResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final CheckoutDataModel? data;

  @override
  String toString() {
    return 'CheckoutResponseModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutResponseModelImplCopyWith<_$CheckoutResponseModelImpl>
      get copyWith => __$$CheckoutResponseModelImplCopyWithImpl<
          _$CheckoutResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CheckoutResponseModel implements CheckoutResponseModel {
  const factory _CheckoutResponseModel(
      {final int? code,
      final String? message,
      final CheckoutDataModel? data}) = _$CheckoutResponseModelImpl;

  factory _CheckoutResponseModel.fromJson(Map<String, dynamic> json) =
      _$CheckoutResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  CheckoutDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutResponseModelImplCopyWith<_$CheckoutResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CheckoutDataModel _$CheckoutDataModelFromJson(Map<String, dynamic> json) {
  return _CheckoutDataModelModel.fromJson(json);
}

/// @nodoc
mixin _$CheckoutDataModel {
  CheckoutInnerDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutDataModelCopyWith<CheckoutDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDataModelCopyWith<$Res> {
  factory $CheckoutDataModelCopyWith(
          CheckoutDataModel value, $Res Function(CheckoutDataModel) then) =
      _$CheckoutDataModelCopyWithImpl<$Res, CheckoutDataModel>;
  @useResult
  $Res call({CheckoutInnerDataModel? data});

  $CheckoutInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CheckoutDataModelCopyWithImpl<$Res, $Val extends CheckoutDataModel>
    implements $CheckoutDataModelCopyWith<$Res> {
  _$CheckoutDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckoutInnerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckoutInnerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CheckoutInnerDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutDataModelModelImplCopyWith<$Res>
    implements $CheckoutDataModelCopyWith<$Res> {
  factory _$$CheckoutDataModelModelImplCopyWith(
          _$CheckoutDataModelModelImpl value,
          $Res Function(_$CheckoutDataModelModelImpl) then) =
      __$$CheckoutDataModelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CheckoutInnerDataModel? data});

  @override
  $CheckoutInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CheckoutDataModelModelImplCopyWithImpl<$Res>
    extends _$CheckoutDataModelCopyWithImpl<$Res, _$CheckoutDataModelModelImpl>
    implements _$$CheckoutDataModelModelImplCopyWith<$Res> {
  __$$CheckoutDataModelModelImplCopyWithImpl(
      _$CheckoutDataModelModelImpl _value,
      $Res Function(_$CheckoutDataModelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CheckoutDataModelModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckoutInnerDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CheckoutDataModelModelImpl implements _CheckoutDataModelModel {
  const _$CheckoutDataModelModelImpl({this.data});

  factory _$CheckoutDataModelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutDataModelModelImplFromJson(json);

  @override
  final CheckoutInnerDataModel? data;

  @override
  String toString() {
    return 'CheckoutDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutDataModelModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutDataModelModelImplCopyWith<_$CheckoutDataModelModelImpl>
      get copyWith => __$$CheckoutDataModelModelImplCopyWithImpl<
          _$CheckoutDataModelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutDataModelModelImplToJson(
      this,
    );
  }
}

abstract class _CheckoutDataModelModel implements CheckoutDataModel {
  const factory _CheckoutDataModelModel({final CheckoutInnerDataModel? data}) =
      _$CheckoutDataModelModelImpl;

  factory _CheckoutDataModelModel.fromJson(Map<String, dynamic> json) =
      _$CheckoutDataModelModelImpl.fromJson;

  @override
  CheckoutInnerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutDataModelModelImplCopyWith<_$CheckoutDataModelModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CheckoutInnerDataModel _$CheckoutInnerDataModelFromJson(
    Map<String, dynamic> json) {
  return _CheckoutInnerDataModel.fromJson(json);
}

/// @nodoc
mixin _$CheckoutInnerDataModel {
  List<ProductModel>? get cartdata => throw _privateConstructorUsedError;
  List<String>? get districts => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  DeliveryChargeModel? get delivery_charge =>
      throw _privateConstructorUsedError;
  List<DistrictModel>? get outvalley_list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutInnerDataModelCopyWith<CheckoutInnerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutInnerDataModelCopyWith<$Res> {
  factory $CheckoutInnerDataModelCopyWith(CheckoutInnerDataModel value,
          $Res Function(CheckoutInnerDataModel) then) =
      _$CheckoutInnerDataModelCopyWithImpl<$Res, CheckoutInnerDataModel>;
  @useResult
  $Res call(
      {List<ProductModel>? cartdata,
      List<String>? districts,
      double? weight,
      DeliveryChargeModel? delivery_charge,
      List<DistrictModel>? outvalley_list});

  $DeliveryChargeModelCopyWith<$Res>? get delivery_charge;
}

/// @nodoc
class _$CheckoutInnerDataModelCopyWithImpl<$Res,
        $Val extends CheckoutInnerDataModel>
    implements $CheckoutInnerDataModelCopyWith<$Res> {
  _$CheckoutInnerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartdata = freezed,
    Object? districts = freezed,
    Object? weight = freezed,
    Object? delivery_charge = freezed,
    Object? outvalley_list = freezed,
  }) {
    return _then(_value.copyWith(
      cartdata: freezed == cartdata
          ? _value.cartdata
          : cartdata // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      districts: freezed == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      delivery_charge: freezed == delivery_charge
          ? _value.delivery_charge
          : delivery_charge // ignore: cast_nullable_to_non_nullable
              as DeliveryChargeModel?,
      outvalley_list: freezed == outvalley_list
          ? _value.outvalley_list
          : outvalley_list // ignore: cast_nullable_to_non_nullable
              as List<DistrictModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryChargeModelCopyWith<$Res>? get delivery_charge {
    if (_value.delivery_charge == null) {
      return null;
    }

    return $DeliveryChargeModelCopyWith<$Res>(_value.delivery_charge!, (value) {
      return _then(_value.copyWith(delivery_charge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutInnerDataModelImplCopyWith<$Res>
    implements $CheckoutInnerDataModelCopyWith<$Res> {
  factory _$$CheckoutInnerDataModelImplCopyWith(
          _$CheckoutInnerDataModelImpl value,
          $Res Function(_$CheckoutInnerDataModelImpl) then) =
      __$$CheckoutInnerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModel>? cartdata,
      List<String>? districts,
      double? weight,
      DeliveryChargeModel? delivery_charge,
      List<DistrictModel>? outvalley_list});

  @override
  $DeliveryChargeModelCopyWith<$Res>? get delivery_charge;
}

/// @nodoc
class __$$CheckoutInnerDataModelImplCopyWithImpl<$Res>
    extends _$CheckoutInnerDataModelCopyWithImpl<$Res,
        _$CheckoutInnerDataModelImpl>
    implements _$$CheckoutInnerDataModelImplCopyWith<$Res> {
  __$$CheckoutInnerDataModelImplCopyWithImpl(
      _$CheckoutInnerDataModelImpl _value,
      $Res Function(_$CheckoutInnerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartdata = freezed,
    Object? districts = freezed,
    Object? weight = freezed,
    Object? delivery_charge = freezed,
    Object? outvalley_list = freezed,
  }) {
    return _then(_$CheckoutInnerDataModelImpl(
      cartdata: freezed == cartdata
          ? _value._cartdata
          : cartdata // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      districts: freezed == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      delivery_charge: freezed == delivery_charge
          ? _value.delivery_charge
          : delivery_charge // ignore: cast_nullable_to_non_nullable
              as DeliveryChargeModel?,
      outvalley_list: freezed == outvalley_list
          ? _value._outvalley_list
          : outvalley_list // ignore: cast_nullable_to_non_nullable
              as List<DistrictModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CheckoutInnerDataModelImpl implements _CheckoutInnerDataModel {
  const _$CheckoutInnerDataModelImpl(
      {final List<ProductModel>? cartdata,
      final List<String>? districts,
      this.weight,
      this.delivery_charge,
      final List<DistrictModel>? outvalley_list})
      : _cartdata = cartdata,
        _districts = districts,
        _outvalley_list = outvalley_list;

  factory _$CheckoutInnerDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutInnerDataModelImplFromJson(json);

  final List<ProductModel>? _cartdata;
  @override
  List<ProductModel>? get cartdata {
    final value = _cartdata;
    if (value == null) return null;
    if (_cartdata is EqualUnmodifiableListView) return _cartdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _districts;
  @override
  List<String>? get districts {
    final value = _districts;
    if (value == null) return null;
    if (_districts is EqualUnmodifiableListView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? weight;
  @override
  final DeliveryChargeModel? delivery_charge;
  final List<DistrictModel>? _outvalley_list;
  @override
  List<DistrictModel>? get outvalley_list {
    final value = _outvalley_list;
    if (value == null) return null;
    if (_outvalley_list is EqualUnmodifiableListView) return _outvalley_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CheckoutInnerDataModel(cartdata: $cartdata, districts: $districts, weight: $weight, delivery_charge: $delivery_charge, outvalley_list: $outvalley_list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutInnerDataModelImpl &&
            const DeepCollectionEquality().equals(other._cartdata, _cartdata) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.delivery_charge, delivery_charge) ||
                other.delivery_charge == delivery_charge) &&
            const DeepCollectionEquality()
                .equals(other._outvalley_list, _outvalley_list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartdata),
      const DeepCollectionEquality().hash(_districts),
      weight,
      delivery_charge,
      const DeepCollectionEquality().hash(_outvalley_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutInnerDataModelImplCopyWith<_$CheckoutInnerDataModelImpl>
      get copyWith => __$$CheckoutInnerDataModelImplCopyWithImpl<
          _$CheckoutInnerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutInnerDataModelImplToJson(
      this,
    );
  }
}

abstract class _CheckoutInnerDataModel implements CheckoutInnerDataModel {
  const factory _CheckoutInnerDataModel(
          {final List<ProductModel>? cartdata,
          final List<String>? districts,
          final double? weight,
          final DeliveryChargeModel? delivery_charge,
          final List<DistrictModel>? outvalley_list}) =
      _$CheckoutInnerDataModelImpl;

  factory _CheckoutInnerDataModel.fromJson(Map<String, dynamic> json) =
      _$CheckoutInnerDataModelImpl.fromJson;

  @override
  List<ProductModel>? get cartdata;
  @override
  List<String>? get districts;
  @override
  double? get weight;
  @override
  DeliveryChargeModel? get delivery_charge;
  @override
  List<DistrictModel>? get outvalley_list;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutInnerDataModelImplCopyWith<_$CheckoutInnerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeliveryChargeModel _$DeliveryChargeModelFromJson(Map<String, dynamic> json) {
  return _DeliveryChargeModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryChargeModel {
  int? get inside_ringroad => throw _privateConstructorUsedError;
  int? get outside_ringroad => throw _privateConstructorUsedError;
  int? get outside_valley => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryChargeModelCopyWith<DeliveryChargeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryChargeModelCopyWith<$Res> {
  factory $DeliveryChargeModelCopyWith(
          DeliveryChargeModel value, $Res Function(DeliveryChargeModel) then) =
      _$DeliveryChargeModelCopyWithImpl<$Res, DeliveryChargeModel>;
  @useResult
  $Res call({int? inside_ringroad, int? outside_ringroad, int? outside_valley});
}

/// @nodoc
class _$DeliveryChargeModelCopyWithImpl<$Res, $Val extends DeliveryChargeModel>
    implements $DeliveryChargeModelCopyWith<$Res> {
  _$DeliveryChargeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inside_ringroad = freezed,
    Object? outside_ringroad = freezed,
    Object? outside_valley = freezed,
  }) {
    return _then(_value.copyWith(
      inside_ringroad: freezed == inside_ringroad
          ? _value.inside_ringroad
          : inside_ringroad // ignore: cast_nullable_to_non_nullable
              as int?,
      outside_ringroad: freezed == outside_ringroad
          ? _value.outside_ringroad
          : outside_ringroad // ignore: cast_nullable_to_non_nullable
              as int?,
      outside_valley: freezed == outside_valley
          ? _value.outside_valley
          : outside_valley // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryChargeModelImplCopyWith<$Res>
    implements $DeliveryChargeModelCopyWith<$Res> {
  factory _$$DeliveryChargeModelImplCopyWith(_$DeliveryChargeModelImpl value,
          $Res Function(_$DeliveryChargeModelImpl) then) =
      __$$DeliveryChargeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? inside_ringroad, int? outside_ringroad, int? outside_valley});
}

/// @nodoc
class __$$DeliveryChargeModelImplCopyWithImpl<$Res>
    extends _$DeliveryChargeModelCopyWithImpl<$Res, _$DeliveryChargeModelImpl>
    implements _$$DeliveryChargeModelImplCopyWith<$Res> {
  __$$DeliveryChargeModelImplCopyWithImpl(_$DeliveryChargeModelImpl _value,
      $Res Function(_$DeliveryChargeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inside_ringroad = freezed,
    Object? outside_ringroad = freezed,
    Object? outside_valley = freezed,
  }) {
    return _then(_$DeliveryChargeModelImpl(
      inside_ringroad: freezed == inside_ringroad
          ? _value.inside_ringroad
          : inside_ringroad // ignore: cast_nullable_to_non_nullable
              as int?,
      outside_ringroad: freezed == outside_ringroad
          ? _value.outside_ringroad
          : outside_ringroad // ignore: cast_nullable_to_non_nullable
              as int?,
      outside_valley: freezed == outside_valley
          ? _value.outside_valley
          : outside_valley // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DeliveryChargeModelImpl implements _DeliveryChargeModel {
  const _$DeliveryChargeModelImpl(
      {this.inside_ringroad, this.outside_ringroad, this.outside_valley});

  factory _$DeliveryChargeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryChargeModelImplFromJson(json);

  @override
  final int? inside_ringroad;
  @override
  final int? outside_ringroad;
  @override
  final int? outside_valley;

  @override
  String toString() {
    return 'DeliveryChargeModel(inside_ringroad: $inside_ringroad, outside_ringroad: $outside_ringroad, outside_valley: $outside_valley)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryChargeModelImpl &&
            (identical(other.inside_ringroad, inside_ringroad) ||
                other.inside_ringroad == inside_ringroad) &&
            (identical(other.outside_ringroad, outside_ringroad) ||
                other.outside_ringroad == outside_ringroad) &&
            (identical(other.outside_valley, outside_valley) ||
                other.outside_valley == outside_valley));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, inside_ringroad, outside_ringroad, outside_valley);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryChargeModelImplCopyWith<_$DeliveryChargeModelImpl> get copyWith =>
      __$$DeliveryChargeModelImplCopyWithImpl<_$DeliveryChargeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryChargeModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryChargeModel implements DeliveryChargeModel {
  const factory _DeliveryChargeModel(
      {final int? inside_ringroad,
      final int? outside_ringroad,
      final int? outside_valley}) = _$DeliveryChargeModelImpl;

  factory _DeliveryChargeModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryChargeModelImpl.fromJson;

  @override
  int? get inside_ringroad;
  @override
  int? get outside_ringroad;
  @override
  int? get outside_valley;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryChargeModelImplCopyWith<_$DeliveryChargeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DistrictModel _$DistrictModelFromJson(Map<String, dynamic> json) {
  return _DistrictModel.fromJson(json);
}

/// @nodoc
mixin _$DistrictModel {
  int? get id => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  int? get insideRingRoad => throw _privateConstructorUsedError;
  int? get outsideRingRoad => throw _privateConstructorUsedError;
  int? get accept_cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictModelCopyWith<DistrictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictModelCopyWith<$Res> {
  factory $DistrictModelCopyWith(
          DistrictModel value, $Res Function(DistrictModel) then) =
      _$DistrictModelCopyWithImpl<$Res, DistrictModel>;
  @useResult
  $Res call(
      {int? id,
      String? district,
      String? city,
      String? created_at,
      String? updated_at,
      int? insideRingRoad,
      int? outsideRingRoad,
      int? accept_cod});
}

/// @nodoc
class _$DistrictModelCopyWithImpl<$Res, $Val extends DistrictModel>
    implements $DistrictModelCopyWith<$Res> {
  _$DistrictModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? insideRingRoad = freezed,
    Object? outsideRingRoad = freezed,
    Object? accept_cod = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      insideRingRoad: freezed == insideRingRoad
          ? _value.insideRingRoad
          : insideRingRoad // ignore: cast_nullable_to_non_nullable
              as int?,
      outsideRingRoad: freezed == outsideRingRoad
          ? _value.outsideRingRoad
          : outsideRingRoad // ignore: cast_nullable_to_non_nullable
              as int?,
      accept_cod: freezed == accept_cod
          ? _value.accept_cod
          : accept_cod // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictModelImplCopyWith<$Res>
    implements $DistrictModelCopyWith<$Res> {
  factory _$$DistrictModelImplCopyWith(
          _$DistrictModelImpl value, $Res Function(_$DistrictModelImpl) then) =
      __$$DistrictModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? district,
      String? city,
      String? created_at,
      String? updated_at,
      int? insideRingRoad,
      int? outsideRingRoad,
      int? accept_cod});
}

/// @nodoc
class __$$DistrictModelImplCopyWithImpl<$Res>
    extends _$DistrictModelCopyWithImpl<$Res, _$DistrictModelImpl>
    implements _$$DistrictModelImplCopyWith<$Res> {
  __$$DistrictModelImplCopyWithImpl(
      _$DistrictModelImpl _value, $Res Function(_$DistrictModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? insideRingRoad = freezed,
    Object? outsideRingRoad = freezed,
    Object? accept_cod = freezed,
  }) {
    return _then(_$DistrictModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      insideRingRoad: freezed == insideRingRoad
          ? _value.insideRingRoad
          : insideRingRoad // ignore: cast_nullable_to_non_nullable
              as int?,
      outsideRingRoad: freezed == outsideRingRoad
          ? _value.outsideRingRoad
          : outsideRingRoad // ignore: cast_nullable_to_non_nullable
              as int?,
      accept_cod: freezed == accept_cod
          ? _value.accept_cod
          : accept_cod // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DistrictModelImpl implements _DistrictModel {
  const _$DistrictModelImpl(
      {this.id,
      this.district,
      this.city,
      this.created_at,
      this.updated_at,
      this.insideRingRoad,
      this.outsideRingRoad,
      this.accept_cod});

  factory _$DistrictModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? district;
  @override
  final String? city;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final int? insideRingRoad;
  @override
  final int? outsideRingRoad;
  @override
  final int? accept_cod;

  @override
  String toString() {
    return 'DistrictModel(id: $id, district: $district, city: $city, created_at: $created_at, updated_at: $updated_at, insideRingRoad: $insideRingRoad, outsideRingRoad: $outsideRingRoad, accept_cod: $accept_cod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.insideRingRoad, insideRingRoad) ||
                other.insideRingRoad == insideRingRoad) &&
            (identical(other.outsideRingRoad, outsideRingRoad) ||
                other.outsideRingRoad == outsideRingRoad) &&
            (identical(other.accept_cod, accept_cod) ||
                other.accept_cod == accept_cod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, district, city, created_at,
      updated_at, insideRingRoad, outsideRingRoad, accept_cod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictModelImplCopyWith<_$DistrictModelImpl> get copyWith =>
      __$$DistrictModelImplCopyWithImpl<_$DistrictModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictModelImplToJson(
      this,
    );
  }
}

abstract class _DistrictModel implements DistrictModel {
  const factory _DistrictModel(
      {final int? id,
      final String? district,
      final String? city,
      final String? created_at,
      final String? updated_at,
      final int? insideRingRoad,
      final int? outsideRingRoad,
      final int? accept_cod}) = _$DistrictModelImpl;

  factory _DistrictModel.fromJson(Map<String, dynamic> json) =
      _$DistrictModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get district;
  @override
  String? get city;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  int? get insideRingRoad;
  @override
  int? get outsideRingRoad;
  @override
  int? get accept_cod;
  @override
  @JsonKey(ignore: true)
  _$$DistrictModelImplCopyWith<_$DistrictModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
