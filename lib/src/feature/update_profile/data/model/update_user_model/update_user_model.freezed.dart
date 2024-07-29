// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserModel _$UpdateUserModelFromJson(Map<String, dynamic> json) {
  return _UpdateUserModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UpdateUserDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserModelCopyWith<UpdateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserModelCopyWith<$Res> {
  factory $UpdateUserModelCopyWith(
          UpdateUserModel value, $Res Function(UpdateUserModel) then) =
      _$UpdateUserModelCopyWithImpl<$Res, UpdateUserModel>;
  @useResult
  $Res call({int? code, String? message, UpdateUserDataModel? data});

  $UpdateUserDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateUserModelCopyWithImpl<$Res, $Val extends UpdateUserModel>
    implements $UpdateUserModelCopyWith<$Res> {
  _$UpdateUserModelCopyWithImpl(this._value, this._then);

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
              as UpdateUserDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateUserDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UpdateUserDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateUserModelImplCopyWith<$Res>
    implements $UpdateUserModelCopyWith<$Res> {
  factory _$$UpdateUserModelImplCopyWith(_$UpdateUserModelImpl value,
          $Res Function(_$UpdateUserModelImpl) then) =
      __$$UpdateUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, UpdateUserDataModel? data});

  @override
  $UpdateUserDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateUserModelImplCopyWithImpl<$Res>
    extends _$UpdateUserModelCopyWithImpl<$Res, _$UpdateUserModelImpl>
    implements _$$UpdateUserModelImplCopyWith<$Res> {
  __$$UpdateUserModelImplCopyWithImpl(
      _$UpdateUserModelImpl _value, $Res Function(_$UpdateUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UpdateUserModelImpl(
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
              as UpdateUserDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UpdateUserModelImpl implements _UpdateUserModel {
  const _$UpdateUserModelImpl({this.code, this.message, this.data});

  factory _$UpdateUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final UpdateUserDataModel? data;

  @override
  String toString() {
    return 'UpdateUserModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserModelImpl &&
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
  _$$UpdateUserModelImplCopyWith<_$UpdateUserModelImpl> get copyWith =>
      __$$UpdateUserModelImplCopyWithImpl<_$UpdateUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserModel implements UpdateUserModel {
  const factory _UpdateUserModel(
      {final int? code,
      final String? message,
      final UpdateUserDataModel? data}) = _$UpdateUserModelImpl;

  factory _UpdateUserModel.fromJson(Map<String, dynamic> json) =
      _$UpdateUserModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  UpdateUserDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserModelImplCopyWith<_$UpdateUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUserDataModel _$UpdateUserDataModelFromJson(Map<String, dynamic> json) {
  return _UpdateUserDataModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserDataModel {
  @JsonKey(name: 'userDetails')
  UserDetails? get userDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserDataModelCopyWith<UpdateUserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserDataModelCopyWith<$Res> {
  factory $UpdateUserDataModelCopyWith(
          UpdateUserDataModel value, $Res Function(UpdateUserDataModel) then) =
      _$UpdateUserDataModelCopyWithImpl<$Res, UpdateUserDataModel>;
  @useResult
  $Res call({@JsonKey(name: 'userDetails') UserDetails? userDetails});

  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class _$UpdateUserDataModelCopyWithImpl<$Res, $Val extends UpdateUserDataModel>
    implements $UpdateUserDataModelCopyWith<$Res> {
  _$UpdateUserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetails = freezed,
  }) {
    return _then(_value.copyWith(
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailsCopyWith<$Res>? get userDetails {
    if (_value.userDetails == null) {
      return null;
    }

    return $UserDetailsCopyWith<$Res>(_value.userDetails!, (value) {
      return _then(_value.copyWith(userDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateUserDataModelImplCopyWith<$Res>
    implements $UpdateUserDataModelCopyWith<$Res> {
  factory _$$UpdateUserDataModelImplCopyWith(_$UpdateUserDataModelImpl value,
          $Res Function(_$UpdateUserDataModelImpl) then) =
      __$$UpdateUserDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'userDetails') UserDetails? userDetails});

  @override
  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class __$$UpdateUserDataModelImplCopyWithImpl<$Res>
    extends _$UpdateUserDataModelCopyWithImpl<$Res, _$UpdateUserDataModelImpl>
    implements _$$UpdateUserDataModelImplCopyWith<$Res> {
  __$$UpdateUserDataModelImplCopyWithImpl(_$UpdateUserDataModelImpl _value,
      $Res Function(_$UpdateUserDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetails = freezed,
  }) {
    return _then(_$UpdateUserDataModelImpl(
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UpdateUserDataModelImpl implements _UpdateUserDataModel {
  const _$UpdateUserDataModelImpl(
      {@JsonKey(name: 'userDetails') this.userDetails});

  factory _$UpdateUserDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'userDetails')
  final UserDetails? userDetails;

  @override
  String toString() {
    return 'UpdateUserDataModel(userDetails: $userDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserDataModelImpl &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserDataModelImplCopyWith<_$UpdateUserDataModelImpl> get copyWith =>
      __$$UpdateUserDataModelImplCopyWithImpl<_$UpdateUserDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserDataModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserDataModel implements UpdateUserDataModel {
  const factory _UpdateUserDataModel(
          {@JsonKey(name: 'userDetails') final UserDetails? userDetails}) =
      _$UpdateUserDataModelImpl;

  factory _UpdateUserDataModel.fromJson(Map<String, dynamic> json) =
      _$UpdateUserDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'userDetails')
  UserDetails? get userDetails;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserDataModelImplCopyWith<_$UpdateUserDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
