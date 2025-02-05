// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchCategoryModel _$SearchCategoryModelFromJson(Map<String, dynamic> json) {
  return _SearchCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$SearchCategoryModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SearchCategoryDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCategoryModelCopyWith<SearchCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCategoryModelCopyWith<$Res> {
  factory $SearchCategoryModelCopyWith(
          SearchCategoryModel value, $Res Function(SearchCategoryModel) then) =
      _$SearchCategoryModelCopyWithImpl<$Res, SearchCategoryModel>;
  @useResult
  $Res call({int? code, String? message, SearchCategoryDataModel? data});

  $SearchCategoryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchCategoryModelCopyWithImpl<$Res, $Val extends SearchCategoryModel>
    implements $SearchCategoryModelCopyWith<$Res> {
  _$SearchCategoryModelCopyWithImpl(this._value, this._then);

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
              as SearchCategoryDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SearchCategoryDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchCategoryModelImplCopyWith<$Res>
    implements $SearchCategoryModelCopyWith<$Res> {
  factory _$$SearchCategoryModelImplCopyWith(_$SearchCategoryModelImpl value,
          $Res Function(_$SearchCategoryModelImpl) then) =
      __$$SearchCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, SearchCategoryDataModel? data});

  @override
  $SearchCategoryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SearchCategoryModelImplCopyWithImpl<$Res>
    extends _$SearchCategoryModelCopyWithImpl<$Res, _$SearchCategoryModelImpl>
    implements _$$SearchCategoryModelImplCopyWith<$Res> {
  __$$SearchCategoryModelImplCopyWithImpl(_$SearchCategoryModelImpl _value,
      $Res Function(_$SearchCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchCategoryModelImpl(
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
              as SearchCategoryDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SearchCategoryModelImpl implements _SearchCategoryModel {
  const _$SearchCategoryModelImpl({this.code, this.message, this.data});

  factory _$SearchCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchCategoryModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final SearchCategoryDataModel? data;

  @override
  String toString() {
    return 'SearchCategoryModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCategoryModelImpl &&
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
  _$$SearchCategoryModelImplCopyWith<_$SearchCategoryModelImpl> get copyWith =>
      __$$SearchCategoryModelImplCopyWithImpl<_$SearchCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _SearchCategoryModel implements SearchCategoryModel {
  const factory _SearchCategoryModel(
      {final int? code,
      final String? message,
      final SearchCategoryDataModel? data}) = _$SearchCategoryModelImpl;

  factory _SearchCategoryModel.fromJson(Map<String, dynamic> json) =
      _$SearchCategoryModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  SearchCategoryDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchCategoryModelImplCopyWith<_$SearchCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchCategoryDataModel _$SearchCategoryDataModelFromJson(
    Map<String, dynamic> json) {
  return _SearchCategoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$SearchCategoryDataModel {
  List<CategoryItemModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCategoryDataModelCopyWith<SearchCategoryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCategoryDataModelCopyWith<$Res> {
  factory $SearchCategoryDataModelCopyWith(SearchCategoryDataModel value,
          $Res Function(SearchCategoryDataModel) then) =
      _$SearchCategoryDataModelCopyWithImpl<$Res, SearchCategoryDataModel>;
  @useResult
  $Res call({List<CategoryItemModel>? data});
}

/// @nodoc
class _$SearchCategoryDataModelCopyWithImpl<$Res,
        $Val extends SearchCategoryDataModel>
    implements $SearchCategoryDataModelCopyWith<$Res> {
  _$SearchCategoryDataModelCopyWithImpl(this._value, this._then);

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
              as List<CategoryItemModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchCategoryDataModelImplCopyWith<$Res>
    implements $SearchCategoryDataModelCopyWith<$Res> {
  factory _$$SearchCategoryDataModelImplCopyWith(
          _$SearchCategoryDataModelImpl value,
          $Res Function(_$SearchCategoryDataModelImpl) then) =
      __$$SearchCategoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryItemModel>? data});
}

/// @nodoc
class __$$SearchCategoryDataModelImplCopyWithImpl<$Res>
    extends _$SearchCategoryDataModelCopyWithImpl<$Res,
        _$SearchCategoryDataModelImpl>
    implements _$$SearchCategoryDataModelImplCopyWith<$Res> {
  __$$SearchCategoryDataModelImplCopyWithImpl(
      _$SearchCategoryDataModelImpl _value,
      $Res Function(_$SearchCategoryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SearchCategoryDataModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SearchCategoryDataModelImpl implements _SearchCategoryDataModel {
  const _$SearchCategoryDataModelImpl({final List<CategoryItemModel>? data})
      : _data = data;

  factory _$SearchCategoryDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchCategoryDataModelImplFromJson(json);

  final List<CategoryItemModel>? _data;
  @override
  List<CategoryItemModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchCategoryDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCategoryDataModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCategoryDataModelImplCopyWith<_$SearchCategoryDataModelImpl>
      get copyWith => __$$SearchCategoryDataModelImplCopyWithImpl<
          _$SearchCategoryDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchCategoryDataModelImplToJson(
      this,
    );
  }
}

abstract class _SearchCategoryDataModel implements SearchCategoryDataModel {
  const factory _SearchCategoryDataModel(
      {final List<CategoryItemModel>? data}) = _$SearchCategoryDataModelImpl;

  factory _SearchCategoryDataModel.fromJson(Map<String, dynamic> json) =
      _$SearchCategoryDataModelImpl.fromJson;

  @override
  List<CategoryItemModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchCategoryDataModelImplCopyWith<_$SearchCategoryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
