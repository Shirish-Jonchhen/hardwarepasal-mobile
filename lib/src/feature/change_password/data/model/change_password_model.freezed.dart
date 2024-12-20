// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordModel _$ChangePasswordModelFromJson(Map<String, dynamic> json) {
  return _ChangePasswordModel.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<dynamic>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordModelCopyWith<ChangePasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordModelCopyWith<$Res> {
  factory $ChangePasswordModelCopyWith(
          ChangePasswordModel value, $Res Function(ChangePasswordModel) then) =
      _$ChangePasswordModelCopyWithImpl<$Res, ChangePasswordModel>;
  @useResult
  $Res call({int? code, String? message, List<dynamic>? data});
}

/// @nodoc
class _$ChangePasswordModelCopyWithImpl<$Res, $Val extends ChangePasswordModel>
    implements $ChangePasswordModelCopyWith<$Res> {
  _$ChangePasswordModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ChangePasswordModelImplCopyWith<$Res>
    implements $ChangePasswordModelCopyWith<$Res> {
  factory _$$ChangePasswordModelImplCopyWith(_$ChangePasswordModelImpl value,
          $Res Function(_$ChangePasswordModelImpl) then) =
      __$$ChangePasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, List<dynamic>? data});
}

/// @nodoc
class __$$ChangePasswordModelImplCopyWithImpl<$Res>
    extends _$ChangePasswordModelCopyWithImpl<$Res, _$ChangePasswordModelImpl>
    implements _$$ChangePasswordModelImplCopyWith<$Res> {
  __$$ChangePasswordModelImplCopyWithImpl(_$ChangePasswordModelImpl _value,
      $Res Function(_$ChangePasswordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ChangePasswordModelImpl(
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
class _$ChangePasswordModelImpl implements _ChangePasswordModel {
  const _$ChangePasswordModelImpl(
      {this.code, this.message, final List<dynamic>? data})
      : _data = data;

  factory _$ChangePasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordModelImplFromJson(json);

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
    return 'ChangePasswordModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordModelImpl &&
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
  _$$ChangePasswordModelImplCopyWith<_$ChangePasswordModelImpl> get copyWith =>
      __$$ChangePasswordModelImplCopyWithImpl<_$ChangePasswordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordModelImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordModel implements ChangePasswordModel {
  const factory _ChangePasswordModel(
      {final int? code,
      final String? message,
      final List<dynamic>? data}) = _$ChangePasswordModelImpl;

  factory _ChangePasswordModel.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  List<dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordModelImplCopyWith<_$ChangePasswordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
