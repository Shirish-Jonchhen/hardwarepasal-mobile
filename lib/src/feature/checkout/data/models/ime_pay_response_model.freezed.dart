// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ime_pay_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImePayResponseModel _$ImePayResponseModelFromJson(Map<String, dynamic> json) {
  return _ImePayResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ImePayResponseModel {
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get viewdata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImePayResponseModelCopyWith<ImePayResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImePayResponseModelCopyWith<$Res> {
  factory $ImePayResponseModelCopyWith(
          ImePayResponseModel value, $Res Function(ImePayResponseModel) then) =
      _$ImePayResponseModelCopyWithImpl<$Res, ImePayResponseModel>;
  @useResult
  $Res call({bool? error, String? message, String? viewdata});
}

/// @nodoc
class _$ImePayResponseModelCopyWithImpl<$Res, $Val extends ImePayResponseModel>
    implements $ImePayResponseModelCopyWith<$Res> {
  _$ImePayResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ImePayResponseModelImplCopyWith<$Res>
    implements $ImePayResponseModelCopyWith<$Res> {
  factory _$$ImePayResponseModelImplCopyWith(_$ImePayResponseModelImpl value,
          $Res Function(_$ImePayResponseModelImpl) then) =
      __$$ImePayResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? error, String? message, String? viewdata});
}

/// @nodoc
class __$$ImePayResponseModelImplCopyWithImpl<$Res>
    extends _$ImePayResponseModelCopyWithImpl<$Res, _$ImePayResponseModelImpl>
    implements _$$ImePayResponseModelImplCopyWith<$Res> {
  __$$ImePayResponseModelImplCopyWithImpl(_$ImePayResponseModelImpl _value,
      $Res Function(_$ImePayResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? viewdata = freezed,
  }) {
    return _then(_$ImePayResponseModelImpl(
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
class _$ImePayResponseModelImpl implements _ImePayResponseModel {
  const _$ImePayResponseModelImpl({this.error, this.message, this.viewdata});

  factory _$ImePayResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImePayResponseModelImplFromJson(json);

  @override
  final bool? error;
  @override
  final String? message;
  @override
  final String? viewdata;

  @override
  String toString() {
    return 'ImePayResponseModel(error: $error, message: $message, viewdata: $viewdata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImePayResponseModelImpl &&
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
  _$$ImePayResponseModelImplCopyWith<_$ImePayResponseModelImpl> get copyWith =>
      __$$ImePayResponseModelImplCopyWithImpl<_$ImePayResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImePayResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ImePayResponseModel implements ImePayResponseModel {
  const factory _ImePayResponseModel(
      {final bool? error,
      final String? message,
      final String? viewdata}) = _$ImePayResponseModelImpl;

  factory _ImePayResponseModel.fromJson(Map<String, dynamic> json) =
      _$ImePayResponseModelImpl.fromJson;

  @override
  bool? get error;
  @override
  String? get message;
  @override
  String? get viewdata;
  @override
  @JsonKey(ignore: true)
  _$$ImePayResponseModelImplCopyWith<_$ImePayResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
