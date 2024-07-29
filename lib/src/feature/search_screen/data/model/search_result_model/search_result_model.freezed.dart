// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResultModel _$SearchResultModelFromJson(Map<String, dynamic> json) {
  return _SearchResultModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResultModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SearchResultDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultModelCopyWith<SearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultModelCopyWith<$Res> {
  factory $SearchResultModelCopyWith(
          SearchResultModel value, $Res Function(SearchResultModel) then) =
      _$SearchResultModelCopyWithImpl<$Res, SearchResultModel>;
  @useResult
  $Res call({int? code, String? message, SearchResultDataModel? data});

  $SearchResultDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchResultModelCopyWithImpl<$Res, $Val extends SearchResultModel>
    implements $SearchResultModelCopyWith<$Res> {
  _$SearchResultModelCopyWithImpl(this._value, this._then);

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
              as SearchResultDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchResultDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SearchResultDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResultModelImplCopyWith<$Res>
    implements $SearchResultModelCopyWith<$Res> {
  factory _$$SearchResultModelImplCopyWith(_$SearchResultModelImpl value,
          $Res Function(_$SearchResultModelImpl) then) =
      __$$SearchResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, SearchResultDataModel? data});

  @override
  $SearchResultDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SearchResultModelImplCopyWithImpl<$Res>
    extends _$SearchResultModelCopyWithImpl<$Res, _$SearchResultModelImpl>
    implements _$$SearchResultModelImplCopyWith<$Res> {
  __$$SearchResultModelImplCopyWithImpl(_$SearchResultModelImpl _value,
      $Res Function(_$SearchResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchResultModelImpl(
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
              as SearchResultDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SearchResultModelImpl implements _SearchResultModel {
  const _$SearchResultModelImpl({this.code, this.message, this.data});

  factory _$SearchResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final SearchResultDataModel? data;

  @override
  String toString() {
    return 'SearchResultModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultModelImpl &&
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
  _$$SearchResultModelImplCopyWith<_$SearchResultModelImpl> get copyWith =>
      __$$SearchResultModelImplCopyWithImpl<_$SearchResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultModelImplToJson(
      this,
    );
  }
}

abstract class _SearchResultModel implements SearchResultModel {
  const factory _SearchResultModel(
      {final int? code,
      final String? message,
      final SearchResultDataModel? data}) = _$SearchResultModelImpl;

  factory _SearchResultModel.fromJson(Map<String, dynamic> json) =
      _$SearchResultModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  SearchResultDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultModelImplCopyWith<_$SearchResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResultDataModel _$SearchResultDataModelFromJson(
    Map<String, dynamic> json) {
  return _SearchResultDataModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResultDataModel {
  List<ProductModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultDataModelCopyWith<SearchResultDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultDataModelCopyWith<$Res> {
  factory $SearchResultDataModelCopyWith(SearchResultDataModel value,
          $Res Function(SearchResultDataModel) then) =
      _$SearchResultDataModelCopyWithImpl<$Res, SearchResultDataModel>;
  @useResult
  $Res call({List<ProductModel>? data});
}

/// @nodoc
class _$SearchResultDataModelCopyWithImpl<$Res,
        $Val extends SearchResultDataModel>
    implements $SearchResultDataModelCopyWith<$Res> {
  _$SearchResultDataModelCopyWithImpl(this._value, this._then);

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
              as List<ProductModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultDataModelImplCopyWith<$Res>
    implements $SearchResultDataModelCopyWith<$Res> {
  factory _$$SearchResultDataModelImplCopyWith(
          _$SearchResultDataModelImpl value,
          $Res Function(_$SearchResultDataModelImpl) then) =
      __$$SearchResultDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel>? data});
}

/// @nodoc
class __$$SearchResultDataModelImplCopyWithImpl<$Res>
    extends _$SearchResultDataModelCopyWithImpl<$Res,
        _$SearchResultDataModelImpl>
    implements _$$SearchResultDataModelImplCopyWith<$Res> {
  __$$SearchResultDataModelImplCopyWithImpl(_$SearchResultDataModelImpl _value,
      $Res Function(_$SearchResultDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SearchResultDataModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SearchResultDataModelImpl implements _SearchResultDataModel {
  const _$SearchResultDataModelImpl({final List<ProductModel>? data})
      : _data = data;

  factory _$SearchResultDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultDataModelImplFromJson(json);

  final List<ProductModel>? _data;
  @override
  List<ProductModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchResultDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultDataModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultDataModelImplCopyWith<_$SearchResultDataModelImpl>
      get copyWith => __$$SearchResultDataModelImplCopyWithImpl<
          _$SearchResultDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultDataModelImplToJson(
      this,
    );
  }
}

abstract class _SearchResultDataModel implements SearchResultDataModel {
  const factory _SearchResultDataModel({final List<ProductModel>? data}) =
      _$SearchResultDataModelImpl;

  factory _SearchResultDataModel.fromJson(Map<String, dynamic> json) =
      _$SearchResultDataModelImpl.fromJson;

  @override
  List<ProductModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultDataModelImplCopyWith<_$SearchResultDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
