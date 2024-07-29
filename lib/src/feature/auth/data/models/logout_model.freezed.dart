// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogoutModel _$LogoutModelFromJson(Map<String, dynamic> json) {
  return _LogoutModel.fromJson(json);
}

/// @nodoc
mixin _$LogoutModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<dynamic>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoutModelCopyWith<LogoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutModelCopyWith<$Res> {
  factory $LogoutModelCopyWith(
          LogoutModel value, $Res Function(LogoutModel) then) =
      _$LogoutModelCopyWithImpl<$Res, LogoutModel>;
  @useResult
  $Res call({int? code, String? message, List<dynamic>? data});
}

/// @nodoc
class _$LogoutModelCopyWithImpl<$Res, $Val extends LogoutModel>
    implements $LogoutModelCopyWith<$Res> {
  _$LogoutModelCopyWithImpl(this._value, this._then);

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
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogoutModelImplCopyWith<$Res>
    implements $LogoutModelCopyWith<$Res> {
  factory _$$LogoutModelImplCopyWith(
          _$LogoutModelImpl value, $Res Function(_$LogoutModelImpl) then) =
      __$$LogoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, List<dynamic>? data});
}

/// @nodoc
class __$$LogoutModelImplCopyWithImpl<$Res>
    extends _$LogoutModelCopyWithImpl<$Res, _$LogoutModelImpl>
    implements _$$LogoutModelImplCopyWith<$Res> {
  __$$LogoutModelImplCopyWithImpl(
      _$LogoutModelImpl _value, $Res Function(_$LogoutModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LogoutModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$LogoutModelImpl implements _LogoutModel {
  const _$LogoutModelImpl({this.code, this.message, final List<dynamic>? data})
      : _data = data;

  factory _$LogoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  final List<dynamic>? _data;
  @override
  List<dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LogoutModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutModelImplCopyWith<_$LogoutModelImpl> get copyWith =>
      __$$LogoutModelImplCopyWithImpl<_$LogoutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutModelImplToJson(
      this,
    );
  }
}

abstract class _LogoutModel implements LogoutModel {
  const factory _LogoutModel(
      {final int? code,
      final String? message,
      final List<dynamic>? data}) = _$LogoutModelImpl;

  factory _LogoutModel.fromJson(Map<String, dynamic> json) =
      _$LogoutModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  List<dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$LogoutModelImplCopyWith<_$LogoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
