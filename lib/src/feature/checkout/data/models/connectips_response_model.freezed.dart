// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectips_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConnectipsResponseModel _$ConnectipsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ConnectipsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ConnectipsResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ConnectipsDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectipsResponseModelCopyWith<ConnectipsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectipsResponseModelCopyWith<$Res> {
  factory $ConnectipsResponseModelCopyWith(ConnectipsResponseModel value,
          $Res Function(ConnectipsResponseModel) then) =
      _$ConnectipsResponseModelCopyWithImpl<$Res, ConnectipsResponseModel>;
  @useResult
  $Res call({int? code, String? message, ConnectipsDataModel? data});

  $ConnectipsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ConnectipsResponseModelCopyWithImpl<$Res,
        $Val extends ConnectipsResponseModel>
    implements $ConnectipsResponseModelCopyWith<$Res> {
  _$ConnectipsResponseModelCopyWithImpl(this._value, this._then);

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
              as ConnectipsDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectipsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ConnectipsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConnectipsResponseModelImplCopyWith<$Res>
    implements $ConnectipsResponseModelCopyWith<$Res> {
  factory _$$ConnectipsResponseModelImplCopyWith(
          _$ConnectipsResponseModelImpl value,
          $Res Function(_$ConnectipsResponseModelImpl) then) =
      __$$ConnectipsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, ConnectipsDataModel? data});

  @override
  $ConnectipsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ConnectipsResponseModelImplCopyWithImpl<$Res>
    extends _$ConnectipsResponseModelCopyWithImpl<$Res,
        _$ConnectipsResponseModelImpl>
    implements _$$ConnectipsResponseModelImplCopyWith<$Res> {
  __$$ConnectipsResponseModelImplCopyWithImpl(
      _$ConnectipsResponseModelImpl _value,
      $Res Function(_$ConnectipsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ConnectipsResponseModelImpl(
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
              as ConnectipsDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ConnectipsResponseModelImpl implements _ConnectipsResponseModel {
  const _$ConnectipsResponseModelImpl({this.code, this.message, this.data});

  factory _$ConnectipsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectipsResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final ConnectipsDataModel? data;

  @override
  String toString() {
    return 'ConnectipsResponseModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectipsResponseModelImpl &&
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
  _$$ConnectipsResponseModelImplCopyWith<_$ConnectipsResponseModelImpl>
      get copyWith => __$$ConnectipsResponseModelImplCopyWithImpl<
          _$ConnectipsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectipsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ConnectipsResponseModel implements ConnectipsResponseModel {
  const factory _ConnectipsResponseModel(
      {final int? code,
      final String? message,
      final ConnectipsDataModel? data}) = _$ConnectipsResponseModelImpl;

  factory _ConnectipsResponseModel.fromJson(Map<String, dynamic> json) =
      _$ConnectipsResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  ConnectipsDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ConnectipsResponseModelImplCopyWith<_$ConnectipsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConnectipsDataModel _$ConnectipsDataModelFromJson(Map<String, dynamic> json) {
  return _ConnectipsDataModel.fromJson(json);
}

/// @nodoc
mixin _$ConnectipsDataModel {
  ConnectipsInnerDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectipsDataModelCopyWith<ConnectipsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectipsDataModelCopyWith<$Res> {
  factory $ConnectipsDataModelCopyWith(
          ConnectipsDataModel value, $Res Function(ConnectipsDataModel) then) =
      _$ConnectipsDataModelCopyWithImpl<$Res, ConnectipsDataModel>;
  @useResult
  $Res call({ConnectipsInnerDataModel? data});

  $ConnectipsInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ConnectipsDataModelCopyWithImpl<$Res, $Val extends ConnectipsDataModel>
    implements $ConnectipsDataModelCopyWith<$Res> {
  _$ConnectipsDataModelCopyWithImpl(this._value, this._then);

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
              as ConnectipsInnerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectipsInnerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ConnectipsInnerDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConnectipsDataModelImplCopyWith<$Res>
    implements $ConnectipsDataModelCopyWith<$Res> {
  factory _$$ConnectipsDataModelImplCopyWith(_$ConnectipsDataModelImpl value,
          $Res Function(_$ConnectipsDataModelImpl) then) =
      __$$ConnectipsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectipsInnerDataModel? data});

  @override
  $ConnectipsInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ConnectipsDataModelImplCopyWithImpl<$Res>
    extends _$ConnectipsDataModelCopyWithImpl<$Res, _$ConnectipsDataModelImpl>
    implements _$$ConnectipsDataModelImplCopyWith<$Res> {
  __$$ConnectipsDataModelImplCopyWithImpl(_$ConnectipsDataModelImpl _value,
      $Res Function(_$ConnectipsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ConnectipsDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConnectipsInnerDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ConnectipsDataModelImpl implements _ConnectipsDataModel {
  const _$ConnectipsDataModelImpl({this.data});

  factory _$ConnectipsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectipsDataModelImplFromJson(json);

  @override
  final ConnectipsInnerDataModel? data;

  @override
  String toString() {
    return 'ConnectipsDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectipsDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectipsDataModelImplCopyWith<_$ConnectipsDataModelImpl> get copyWith =>
      __$$ConnectipsDataModelImplCopyWithImpl<_$ConnectipsDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectipsDataModelImplToJson(
      this,
    );
  }
}

abstract class _ConnectipsDataModel implements ConnectipsDataModel {
  const factory _ConnectipsDataModel({final ConnectipsInnerDataModel? data}) =
      _$ConnectipsDataModelImpl;

  factory _ConnectipsDataModel.fromJson(Map<String, dynamic> json) =
      _$ConnectipsDataModelImpl.fromJson;

  @override
  ConnectipsInnerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ConnectipsDataModelImplCopyWith<_$ConnectipsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConnectipsInnerDataModel _$ConnectipsInnerDataModelFromJson(
    Map<String, dynamic> json) {
  return _ConnectipsInnerDataModel.fromJson(json);
}

/// @nodoc
mixin _$ConnectipsInnerDataModel {
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get viewdata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectipsInnerDataModelCopyWith<ConnectipsInnerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectipsInnerDataModelCopyWith<$Res> {
  factory $ConnectipsInnerDataModelCopyWith(ConnectipsInnerDataModel value,
          $Res Function(ConnectipsInnerDataModel) then) =
      _$ConnectipsInnerDataModelCopyWithImpl<$Res, ConnectipsInnerDataModel>;
  @useResult
  $Res call({bool? error, String? message, String? viewdata});
}

/// @nodoc
class _$ConnectipsInnerDataModelCopyWithImpl<$Res,
        $Val extends ConnectipsInnerDataModel>
    implements $ConnectipsInnerDataModelCopyWith<$Res> {
  _$ConnectipsInnerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? viewdata = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      viewdata: freezed == viewdata
          ? _value.viewdata
          : viewdata // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectipsInnerDataModelImplCopyWith<$Res>
    implements $ConnectipsInnerDataModelCopyWith<$Res> {
  factory _$$ConnectipsInnerDataModelImplCopyWith(
          _$ConnectipsInnerDataModelImpl value,
          $Res Function(_$ConnectipsInnerDataModelImpl) then) =
      __$$ConnectipsInnerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? error, String? message, String? viewdata});
}

/// @nodoc
class __$$ConnectipsInnerDataModelImplCopyWithImpl<$Res>
    extends _$ConnectipsInnerDataModelCopyWithImpl<$Res,
        _$ConnectipsInnerDataModelImpl>
    implements _$$ConnectipsInnerDataModelImplCopyWith<$Res> {
  __$$ConnectipsInnerDataModelImplCopyWithImpl(
      _$ConnectipsInnerDataModelImpl _value,
      $Res Function(_$ConnectipsInnerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? viewdata = freezed,
  }) {
    return _then(_$ConnectipsInnerDataModelImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      viewdata: freezed == viewdata
          ? _value.viewdata
          : viewdata // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ConnectipsInnerDataModelImpl implements _ConnectipsInnerDataModel {
  const _$ConnectipsInnerDataModelImpl(
      {this.error, this.message, this.viewdata});

  factory _$ConnectipsInnerDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectipsInnerDataModelImplFromJson(json);

  @override
  final bool? error;
  @override
  final String? message;
  @override
  final String? viewdata;

  @override
  String toString() {
    return 'ConnectipsInnerDataModel(error: $error, message: $message, viewdata: $viewdata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectipsInnerDataModelImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.viewdata, viewdata) ||
                other.viewdata == viewdata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, viewdata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectipsInnerDataModelImplCopyWith<_$ConnectipsInnerDataModelImpl>
      get copyWith => __$$ConnectipsInnerDataModelImplCopyWithImpl<
          _$ConnectipsInnerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectipsInnerDataModelImplToJson(
      this,
    );
  }
}

abstract class _ConnectipsInnerDataModel implements ConnectipsInnerDataModel {
  const factory _ConnectipsInnerDataModel(
      {final bool? error,
      final String? message,
      final String? viewdata}) = _$ConnectipsInnerDataModelImpl;

  factory _ConnectipsInnerDataModel.fromJson(Map<String, dynamic> json) =
      _$ConnectipsInnerDataModelImpl.fromJson;

  @override
  bool? get error;
  @override
  String? get message;
  @override
  String? get viewdata;
  @override
  @JsonKey(ignore: true)
  _$$ConnectipsInnerDataModelImplCopyWith<_$ConnectipsInnerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
