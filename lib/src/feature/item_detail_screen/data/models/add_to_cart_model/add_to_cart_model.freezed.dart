// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddToCartModel _$AddToCartModelFromJson(Map<String, dynamic> json) {
  return _AddToCartModel.fromJson(json);
}

/// @nodoc
mixin _$AddToCartModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  AddToCartDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddToCartModelCopyWith<AddToCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartModelCopyWith<$Res> {
  factory $AddToCartModelCopyWith(
          AddToCartModel value, $Res Function(AddToCartModel) then) =
      _$AddToCartModelCopyWithImpl<$Res, AddToCartModel>;
  @useResult
  $Res call({int? code, String? message, AddToCartDataModel? data});

  $AddToCartDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddToCartModelCopyWithImpl<$Res, $Val extends AddToCartModel>
    implements $AddToCartModelCopyWith<$Res> {
  _$AddToCartModelCopyWithImpl(this._value, this._then);

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
              as AddToCartDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddToCartDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddToCartDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddToCartModelImplCopyWith<$Res>
    implements $AddToCartModelCopyWith<$Res> {
  factory _$$AddToCartModelImplCopyWith(_$AddToCartModelImpl value,
          $Res Function(_$AddToCartModelImpl) then) =
      __$$AddToCartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, AddToCartDataModel? data});

  @override
  $AddToCartDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddToCartModelImplCopyWithImpl<$Res>
    extends _$AddToCartModelCopyWithImpl<$Res, _$AddToCartModelImpl>
    implements _$$AddToCartModelImplCopyWith<$Res> {
  __$$AddToCartModelImplCopyWithImpl(
      _$AddToCartModelImpl _value, $Res Function(_$AddToCartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddToCartModelImpl(
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
              as AddToCartDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$AddToCartModelImpl implements _AddToCartModel {
  const _$AddToCartModelImpl({this.code, this.message, this.data});

  factory _$AddToCartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddToCartModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final AddToCartDataModel? data;

  @override
  String toString() {
    return 'AddToCartModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartModelImpl &&
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
  _$$AddToCartModelImplCopyWith<_$AddToCartModelImpl> get copyWith =>
      __$$AddToCartModelImplCopyWithImpl<_$AddToCartModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToCartModelImplToJson(
      this,
    );
  }
}

abstract class _AddToCartModel implements AddToCartModel {
  const factory _AddToCartModel(
      {final int? code,
      final String? message,
      final AddToCartDataModel? data}) = _$AddToCartModelImpl;

  factory _AddToCartModel.fromJson(Map<String, dynamic> json) =
      _$AddToCartModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  AddToCartDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddToCartModelImplCopyWith<_$AddToCartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddToCartDataModel _$AddToCartDataModelFromJson(Map<String, dynamic> json) {
  return _AddToCartDataModel.fromJson(json);
}

/// @nodoc
mixin _$AddToCartDataModel {
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddToCartDataModelCopyWith<AddToCartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartDataModelCopyWith<$Res> {
  factory $AddToCartDataModelCopyWith(
          AddToCartDataModel value, $Res Function(AddToCartDataModel) then) =
      _$AddToCartDataModelCopyWithImpl<$Res, AddToCartDataModel>;
  @useResult
  $Res call({String? data});
}

/// @nodoc
class _$AddToCartDataModelCopyWithImpl<$Res, $Val extends AddToCartDataModel>
    implements $AddToCartDataModelCopyWith<$Res> {
  _$AddToCartDataModelCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddToCartDataModelImplCopyWith<$Res>
    implements $AddToCartDataModelCopyWith<$Res> {
  factory _$$AddToCartDataModelImplCopyWith(_$AddToCartDataModelImpl value,
          $Res Function(_$AddToCartDataModelImpl) then) =
      __$$AddToCartDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? data});
}

/// @nodoc
class __$$AddToCartDataModelImplCopyWithImpl<$Res>
    extends _$AddToCartDataModelCopyWithImpl<$Res, _$AddToCartDataModelImpl>
    implements _$$AddToCartDataModelImplCopyWith<$Res> {
  __$$AddToCartDataModelImplCopyWithImpl(_$AddToCartDataModelImpl _value,
      $Res Function(_$AddToCartDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AddToCartDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$AddToCartDataModelImpl implements _AddToCartDataModel {
  const _$AddToCartDataModelImpl({this.data});

  factory _$AddToCartDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddToCartDataModelImplFromJson(json);

  @override
  final String? data;

  @override
  String toString() {
    return 'AddToCartDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartDataModelImplCopyWith<_$AddToCartDataModelImpl> get copyWith =>
      __$$AddToCartDataModelImplCopyWithImpl<_$AddToCartDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToCartDataModelImplToJson(
      this,
    );
  }
}

abstract class _AddToCartDataModel implements AddToCartDataModel {
  const factory _AddToCartDataModel({final String? data}) =
      _$AddToCartDataModelImpl;

  factory _AddToCartDataModel.fromJson(Map<String, dynamic> json) =
      _$AddToCartDataModelImpl.fromJson;

  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddToCartDataModelImplCopyWith<_$AddToCartDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
