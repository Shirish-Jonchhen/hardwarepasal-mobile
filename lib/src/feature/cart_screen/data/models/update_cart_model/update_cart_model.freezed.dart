// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateCartModel _$UpdateCartModelFromJson(Map<String, dynamic> json) {
  return _UpdateCartModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateCartModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UpdateCartDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartModelCopyWith<UpdateCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartModelCopyWith<$Res> {
  factory $UpdateCartModelCopyWith(
          UpdateCartModel value, $Res Function(UpdateCartModel) then) =
      _$UpdateCartModelCopyWithImpl<$Res, UpdateCartModel>;
  @useResult
  $Res call({int? code, String? message, UpdateCartDataModel? data});

  $UpdateCartDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateCartModelCopyWithImpl<$Res, $Val extends UpdateCartModel>
    implements $UpdateCartModelCopyWith<$Res> {
  _$UpdateCartModelCopyWithImpl(this._value, this._then);

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
              as UpdateCartDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateCartDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UpdateCartDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateCartModelImplCopyWith<$Res>
    implements $UpdateCartModelCopyWith<$Res> {
  factory _$$UpdateCartModelImplCopyWith(_$UpdateCartModelImpl value,
          $Res Function(_$UpdateCartModelImpl) then) =
      __$$UpdateCartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, UpdateCartDataModel? data});

  @override
  $UpdateCartDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateCartModelImplCopyWithImpl<$Res>
    extends _$UpdateCartModelCopyWithImpl<$Res, _$UpdateCartModelImpl>
    implements _$$UpdateCartModelImplCopyWith<$Res> {
  __$$UpdateCartModelImplCopyWithImpl(
      _$UpdateCartModelImpl _value, $Res Function(_$UpdateCartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UpdateCartModelImpl(
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
              as UpdateCartDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UpdateCartModelImpl implements _UpdateCartModel {
  const _$UpdateCartModelImpl({this.code, this.message, this.data});

  factory _$UpdateCartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateCartModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final UpdateCartDataModel? data;

  @override
  String toString() {
    return 'UpdateCartModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartModelImpl &&
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
  _$$UpdateCartModelImplCopyWith<_$UpdateCartModelImpl> get copyWith =>
      __$$UpdateCartModelImplCopyWithImpl<_$UpdateCartModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCartModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateCartModel implements UpdateCartModel {
  const factory _UpdateCartModel(
      {final int? code,
      final String? message,
      final UpdateCartDataModel? data}) = _$UpdateCartModelImpl;

  factory _UpdateCartModel.fromJson(Map<String, dynamic> json) =
      _$UpdateCartModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  UpdateCartDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCartModelImplCopyWith<_$UpdateCartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateCartDataModel _$UpdateCartDataModelFromJson(Map<String, dynamic> json) {
  return _UpdateCartDataModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateCartDataModel {
  UpdateCartDetailModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartDataModelCopyWith<UpdateCartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartDataModelCopyWith<$Res> {
  factory $UpdateCartDataModelCopyWith(
          UpdateCartDataModel value, $Res Function(UpdateCartDataModel) then) =
      _$UpdateCartDataModelCopyWithImpl<$Res, UpdateCartDataModel>;
  @useResult
  $Res call({UpdateCartDetailModel? data});

  $UpdateCartDetailModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateCartDataModelCopyWithImpl<$Res, $Val extends UpdateCartDataModel>
    implements $UpdateCartDataModelCopyWith<$Res> {
  _$UpdateCartDataModelCopyWithImpl(this._value, this._then);

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
              as UpdateCartDetailModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateCartDetailModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UpdateCartDetailModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateCartDataModelImplCopyWith<$Res>
    implements $UpdateCartDataModelCopyWith<$Res> {
  factory _$$UpdateCartDataModelImplCopyWith(_$UpdateCartDataModelImpl value,
          $Res Function(_$UpdateCartDataModelImpl) then) =
      __$$UpdateCartDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateCartDetailModel? data});

  @override
  $UpdateCartDetailModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateCartDataModelImplCopyWithImpl<$Res>
    extends _$UpdateCartDataModelCopyWithImpl<$Res, _$UpdateCartDataModelImpl>
    implements _$$UpdateCartDataModelImplCopyWith<$Res> {
  __$$UpdateCartDataModelImplCopyWithImpl(_$UpdateCartDataModelImpl _value,
      $Res Function(_$UpdateCartDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UpdateCartDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdateCartDetailModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UpdateCartDataModelImpl implements _UpdateCartDataModel {
  const _$UpdateCartDataModelImpl({this.data});

  factory _$UpdateCartDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateCartDataModelImplFromJson(json);

  @override
  final UpdateCartDetailModel? data;

  @override
  String toString() {
    return 'UpdateCartDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartDataModelImplCopyWith<_$UpdateCartDataModelImpl> get copyWith =>
      __$$UpdateCartDataModelImplCopyWithImpl<_$UpdateCartDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCartDataModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateCartDataModel implements UpdateCartDataModel {
  const factory _UpdateCartDataModel({final UpdateCartDetailModel? data}) =
      _$UpdateCartDataModelImpl;

  factory _UpdateCartDataModel.fromJson(Map<String, dynamic> json) =
      _$UpdateCartDataModelImpl.fromJson;

  @override
  UpdateCartDetailModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCartDataModelImplCopyWith<_$UpdateCartDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateCartDetailModel _$UpdateCartDetailModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateCartDetailModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateCartDetailModel {
  int? get id => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  int? get sup_id => throw _privateConstructorUsedError;
  String? get additional_info => throw _privateConstructorUsedError;
  String? get quantity => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get mail_date => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartDetailModelCopyWith<UpdateCartDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartDetailModelCopyWith<$Res> {
  factory $UpdateCartDetailModelCopyWith(UpdateCartDetailModel value,
          $Res Function(UpdateCartDetailModel) then) =
      _$UpdateCartDetailModelCopyWithImpl<$Res, UpdateCartDetailModel>;
  @useResult
  $Res call(
      {int? id,
      int? product_id,
      int? user_id,
      int? sup_id,
      String? additional_info,
      String? quantity,
      int? status,
      String? created_at,
      String? mail_date,
      String? updated_at});
}

/// @nodoc
class _$UpdateCartDetailModelCopyWithImpl<$Res,
        $Val extends UpdateCartDetailModel>
    implements $UpdateCartDetailModelCopyWith<$Res> {
  _$UpdateCartDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_id = freezed,
    Object? user_id = freezed,
    Object? sup_id = freezed,
    Object? additional_info = freezed,
    Object? quantity = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? mail_date = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      sup_id: freezed == sup_id
          ? _value.sup_id
          : sup_id // ignore: cast_nullable_to_non_nullable
              as int?,
      additional_info: freezed == additional_info
          ? _value.additional_info
          : additional_info // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      mail_date: freezed == mail_date
          ? _value.mail_date
          : mail_date // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCartDetailModelImplCopyWith<$Res>
    implements $UpdateCartDetailModelCopyWith<$Res> {
  factory _$$UpdateCartDetailModelImplCopyWith(
          _$UpdateCartDetailModelImpl value,
          $Res Function(_$UpdateCartDetailModelImpl) then) =
      __$$UpdateCartDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? product_id,
      int? user_id,
      int? sup_id,
      String? additional_info,
      String? quantity,
      int? status,
      String? created_at,
      String? mail_date,
      String? updated_at});
}

/// @nodoc
class __$$UpdateCartDetailModelImplCopyWithImpl<$Res>
    extends _$UpdateCartDetailModelCopyWithImpl<$Res,
        _$UpdateCartDetailModelImpl>
    implements _$$UpdateCartDetailModelImplCopyWith<$Res> {
  __$$UpdateCartDetailModelImplCopyWithImpl(_$UpdateCartDetailModelImpl _value,
      $Res Function(_$UpdateCartDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_id = freezed,
    Object? user_id = freezed,
    Object? sup_id = freezed,
    Object? additional_info = freezed,
    Object? quantity = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? mail_date = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$UpdateCartDetailModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      sup_id: freezed == sup_id
          ? _value.sup_id
          : sup_id // ignore: cast_nullable_to_non_nullable
              as int?,
      additional_info: freezed == additional_info
          ? _value.additional_info
          : additional_info // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      mail_date: freezed == mail_date
          ? _value.mail_date
          : mail_date // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UpdateCartDetailModelImpl implements _UpdateCartDetailModel {
  const _$UpdateCartDetailModelImpl(
      {this.id,
      this.product_id,
      this.user_id,
      this.sup_id,
      this.additional_info,
      this.quantity,
      this.status,
      this.created_at,
      this.mail_date,
      this.updated_at});

  factory _$UpdateCartDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateCartDetailModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? product_id;
  @override
  final int? user_id;
  @override
  final int? sup_id;
  @override
  final String? additional_info;
  @override
  final String? quantity;
  @override
  final int? status;
  @override
  final String? created_at;
  @override
  final String? mail_date;
  @override
  final String? updated_at;

  @override
  String toString() {
    return 'UpdateCartDetailModel(id: $id, product_id: $product_id, user_id: $user_id, sup_id: $sup_id, additional_info: $additional_info, quantity: $quantity, status: $status, created_at: $created_at, mail_date: $mail_date, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.sup_id, sup_id) || other.sup_id == sup_id) &&
            (identical(other.additional_info, additional_info) ||
                other.additional_info == additional_info) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.mail_date, mail_date) ||
                other.mail_date == mail_date) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, product_id, user_id, sup_id,
      additional_info, quantity, status, created_at, mail_date, updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartDetailModelImplCopyWith<_$UpdateCartDetailModelImpl>
      get copyWith => __$$UpdateCartDetailModelImplCopyWithImpl<
          _$UpdateCartDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCartDetailModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateCartDetailModel implements UpdateCartDetailModel {
  const factory _UpdateCartDetailModel(
      {final int? id,
      final int? product_id,
      final int? user_id,
      final int? sup_id,
      final String? additional_info,
      final String? quantity,
      final int? status,
      final String? created_at,
      final String? mail_date,
      final String? updated_at}) = _$UpdateCartDetailModelImpl;

  factory _UpdateCartDetailModel.fromJson(Map<String, dynamic> json) =
      _$UpdateCartDetailModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get product_id;
  @override
  int? get user_id;
  @override
  int? get sup_id;
  @override
  String? get additional_info;
  @override
  String? get quantity;
  @override
  int? get status;
  @override
  String? get created_at;
  @override
  String? get mail_date;
  @override
  String? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCartDetailModelImplCopyWith<_$UpdateCartDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
