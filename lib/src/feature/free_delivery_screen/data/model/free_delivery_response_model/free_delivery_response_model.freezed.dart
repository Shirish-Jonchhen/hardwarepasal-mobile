// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_delivery_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreeDeliveryResponseModel _$FreeDeliveryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FreeDeliveryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FreeDeliveryResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  FreeDeliveryDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreeDeliveryResponseModelCopyWith<FreeDeliveryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeDeliveryResponseModelCopyWith<$Res> {
  factory $FreeDeliveryResponseModelCopyWith(FreeDeliveryResponseModel value,
          $Res Function(FreeDeliveryResponseModel) then) =
      _$FreeDeliveryResponseModelCopyWithImpl<$Res, FreeDeliveryResponseModel>;
  @useResult
  $Res call({int? code, String? message, FreeDeliveryDataModel? data});

  $FreeDeliveryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FreeDeliveryResponseModelCopyWithImpl<$Res,
        $Val extends FreeDeliveryResponseModel>
    implements $FreeDeliveryResponseModelCopyWith<$Res> {
  _$FreeDeliveryResponseModelCopyWithImpl(this._value, this._then);

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
              as FreeDeliveryDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreeDeliveryDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FreeDeliveryDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FreeDeliveryResponseModelImplCopyWith<$Res>
    implements $FreeDeliveryResponseModelCopyWith<$Res> {
  factory _$$FreeDeliveryResponseModelImplCopyWith(
          _$FreeDeliveryResponseModelImpl value,
          $Res Function(_$FreeDeliveryResponseModelImpl) then) =
      __$$FreeDeliveryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, FreeDeliveryDataModel? data});

  @override
  $FreeDeliveryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FreeDeliveryResponseModelImplCopyWithImpl<$Res>
    extends _$FreeDeliveryResponseModelCopyWithImpl<$Res,
        _$FreeDeliveryResponseModelImpl>
    implements _$$FreeDeliveryResponseModelImplCopyWith<$Res> {
  __$$FreeDeliveryResponseModelImplCopyWithImpl(
      _$FreeDeliveryResponseModelImpl _value,
      $Res Function(_$FreeDeliveryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FreeDeliveryResponseModelImpl(
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
              as FreeDeliveryDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$FreeDeliveryResponseModelImpl implements _FreeDeliveryResponseModel {
  const _$FreeDeliveryResponseModelImpl({this.code, this.message, this.data});

  factory _$FreeDeliveryResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreeDeliveryResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final FreeDeliveryDataModel? data;

  @override
  String toString() {
    return 'FreeDeliveryResponseModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeDeliveryResponseModelImpl &&
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
  _$$FreeDeliveryResponseModelImplCopyWith<_$FreeDeliveryResponseModelImpl>
      get copyWith => __$$FreeDeliveryResponseModelImplCopyWithImpl<
          _$FreeDeliveryResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeDeliveryResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FreeDeliveryResponseModel implements FreeDeliveryResponseModel {
  const factory _FreeDeliveryResponseModel(
      {final int? code,
      final String? message,
      final FreeDeliveryDataModel? data}) = _$FreeDeliveryResponseModelImpl;

  factory _FreeDeliveryResponseModel.fromJson(Map<String, dynamic> json) =
      _$FreeDeliveryResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  FreeDeliveryDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FreeDeliveryResponseModelImplCopyWith<_$FreeDeliveryResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FreeDeliveryDataModel _$FreeDeliveryDataModelFromJson(
    Map<String, dynamic> json) {
  return _FreeDeliveryDataModel.fromJson(json);
}

/// @nodoc
mixin _$FreeDeliveryDataModel {
  FreeDeliveryInnerDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreeDeliveryDataModelCopyWith<FreeDeliveryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeDeliveryDataModelCopyWith<$Res> {
  factory $FreeDeliveryDataModelCopyWith(FreeDeliveryDataModel value,
          $Res Function(FreeDeliveryDataModel) then) =
      _$FreeDeliveryDataModelCopyWithImpl<$Res, FreeDeliveryDataModel>;
  @useResult
  $Res call({FreeDeliveryInnerDataModel? data});

  $FreeDeliveryInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FreeDeliveryDataModelCopyWithImpl<$Res,
        $Val extends FreeDeliveryDataModel>
    implements $FreeDeliveryDataModelCopyWith<$Res> {
  _$FreeDeliveryDataModelCopyWithImpl(this._value, this._then);

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
              as FreeDeliveryInnerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreeDeliveryInnerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FreeDeliveryInnerDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FreeDeliveryDataModelImplCopyWith<$Res>
    implements $FreeDeliveryDataModelCopyWith<$Res> {
  factory _$$FreeDeliveryDataModelImplCopyWith(
          _$FreeDeliveryDataModelImpl value,
          $Res Function(_$FreeDeliveryDataModelImpl) then) =
      __$$FreeDeliveryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FreeDeliveryInnerDataModel? data});

  @override
  $FreeDeliveryInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FreeDeliveryDataModelImplCopyWithImpl<$Res>
    extends _$FreeDeliveryDataModelCopyWithImpl<$Res,
        _$FreeDeliveryDataModelImpl>
    implements _$$FreeDeliveryDataModelImplCopyWith<$Res> {
  __$$FreeDeliveryDataModelImplCopyWithImpl(_$FreeDeliveryDataModelImpl _value,
      $Res Function(_$FreeDeliveryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$FreeDeliveryDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FreeDeliveryInnerDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$FreeDeliveryDataModelImpl implements _FreeDeliveryDataModel {
  const _$FreeDeliveryDataModelImpl({this.data});

  factory _$FreeDeliveryDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreeDeliveryDataModelImplFromJson(json);

  @override
  final FreeDeliveryInnerDataModel? data;

  @override
  String toString() {
    return 'FreeDeliveryDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeDeliveryDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeDeliveryDataModelImplCopyWith<_$FreeDeliveryDataModelImpl>
      get copyWith => __$$FreeDeliveryDataModelImplCopyWithImpl<
          _$FreeDeliveryDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeDeliveryDataModelImplToJson(
      this,
    );
  }
}

abstract class _FreeDeliveryDataModel implements FreeDeliveryDataModel {
  const factory _FreeDeliveryDataModel(
      {final FreeDeliveryInnerDataModel? data}) = _$FreeDeliveryDataModelImpl;

  factory _FreeDeliveryDataModel.fromJson(Map<String, dynamic> json) =
      _$FreeDeliveryDataModelImpl.fromJson;

  @override
  FreeDeliveryInnerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FreeDeliveryDataModelImplCopyWith<_$FreeDeliveryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FreeDeliveryInnerDataModel _$FreeDeliveryInnerDataModelFromJson(
    Map<String, dynamic> json) {
  return _FreeDeliveryInnerDataModel.fromJson(json);
}

/// @nodoc
mixin _$FreeDeliveryInnerDataModel {
  int? get current_page => throw _privateConstructorUsedError;
  List<ProductModel>? get data => throw _privateConstructorUsedError;
  String? get first_page_url => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get last_page => throw _privateConstructorUsedError;
  String? get last_page_url => throw _privateConstructorUsedError;
  String? get next_page_url => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get per_page => throw _privateConstructorUsedError;
  String? get prev_page_url => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreeDeliveryInnerDataModelCopyWith<FreeDeliveryInnerDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeDeliveryInnerDataModelCopyWith<$Res> {
  factory $FreeDeliveryInnerDataModelCopyWith(FreeDeliveryInnerDataModel value,
          $Res Function(FreeDeliveryInnerDataModel) then) =
      _$FreeDeliveryInnerDataModelCopyWithImpl<$Res,
          FreeDeliveryInnerDataModel>;
  @useResult
  $Res call(
      {int? current_page,
      List<ProductModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class _$FreeDeliveryInnerDataModelCopyWithImpl<$Res,
        $Val extends FreeDeliveryInnerDataModel>
    implements $FreeDeliveryInnerDataModelCopyWith<$Res> {
  _$FreeDeliveryInnerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
    Object? first_page_url = freezed,
    Object? from = freezed,
    Object? last_page = freezed,
    Object? last_page_url = freezed,
    Object? next_page_url = freezed,
    Object? path = freezed,
    Object? per_page = freezed,
    Object? prev_page_url = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      first_page_url: freezed == first_page_url
          ? _value.first_page_url
          : first_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      last_page: freezed == last_page
          ? _value.last_page
          : last_page // ignore: cast_nullable_to_non_nullable
              as int?,
      last_page_url: freezed == last_page_url
          ? _value.last_page_url
          : last_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      next_page_url: freezed == next_page_url
          ? _value.next_page_url
          : next_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      per_page: freezed == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int?,
      prev_page_url: freezed == prev_page_url
          ? _value.prev_page_url
          : prev_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreeDeliveryInnerDataModelImplCopyWith<$Res>
    implements $FreeDeliveryInnerDataModelCopyWith<$Res> {
  factory _$$FreeDeliveryInnerDataModelImplCopyWith(
          _$FreeDeliveryInnerDataModelImpl value,
          $Res Function(_$FreeDeliveryInnerDataModelImpl) then) =
      __$$FreeDeliveryInnerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? current_page,
      List<ProductModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class __$$FreeDeliveryInnerDataModelImplCopyWithImpl<$Res>
    extends _$FreeDeliveryInnerDataModelCopyWithImpl<$Res,
        _$FreeDeliveryInnerDataModelImpl>
    implements _$$FreeDeliveryInnerDataModelImplCopyWith<$Res> {
  __$$FreeDeliveryInnerDataModelImplCopyWithImpl(
      _$FreeDeliveryInnerDataModelImpl _value,
      $Res Function(_$FreeDeliveryInnerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
    Object? first_page_url = freezed,
    Object? from = freezed,
    Object? last_page = freezed,
    Object? last_page_url = freezed,
    Object? next_page_url = freezed,
    Object? path = freezed,
    Object? per_page = freezed,
    Object? prev_page_url = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$FreeDeliveryInnerDataModelImpl(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      first_page_url: freezed == first_page_url
          ? _value.first_page_url
          : first_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      last_page: freezed == last_page
          ? _value.last_page
          : last_page // ignore: cast_nullable_to_non_nullable
              as int?,
      last_page_url: freezed == last_page_url
          ? _value.last_page_url
          : last_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      next_page_url: freezed == next_page_url
          ? _value.next_page_url
          : next_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      per_page: freezed == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int?,
      prev_page_url: freezed == prev_page_url
          ? _value.prev_page_url
          : prev_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$FreeDeliveryInnerDataModelImpl implements _FreeDeliveryInnerDataModel {
  const _$FreeDeliveryInnerDataModelImpl(
      {this.current_page,
      final List<ProductModel>? data,
      this.first_page_url,
      this.from,
      this.last_page,
      this.last_page_url,
      this.next_page_url,
      this.path,
      this.per_page,
      this.prev_page_url,
      this.to,
      this.total})
      : _data = data;

  factory _$FreeDeliveryInnerDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FreeDeliveryInnerDataModelImplFromJson(json);

  @override
  final int? current_page;
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
  final String? first_page_url;
  @override
  final int? from;
  @override
  final int? last_page;
  @override
  final String? last_page_url;
  @override
  final String? next_page_url;
  @override
  final String? path;
  @override
  final int? per_page;
  @override
  final String? prev_page_url;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'FreeDeliveryInnerDataModel(current_page: $current_page, data: $data, first_page_url: $first_page_url, from: $from, last_page: $last_page, last_page_url: $last_page_url, next_page_url: $next_page_url, path: $path, per_page: $per_page, prev_page_url: $prev_page_url, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeDeliveryInnerDataModelImpl &&
            (identical(other.current_page, current_page) ||
                other.current_page == current_page) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.first_page_url, first_page_url) ||
                other.first_page_url == first_page_url) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.last_page, last_page) ||
                other.last_page == last_page) &&
            (identical(other.last_page_url, last_page_url) ||
                other.last_page_url == last_page_url) &&
            (identical(other.next_page_url, next_page_url) ||
                other.next_page_url == next_page_url) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.per_page, per_page) ||
                other.per_page == per_page) &&
            (identical(other.prev_page_url, prev_page_url) ||
                other.prev_page_url == prev_page_url) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      current_page,
      const DeepCollectionEquality().hash(_data),
      first_page_url,
      from,
      last_page,
      last_page_url,
      next_page_url,
      path,
      per_page,
      prev_page_url,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeDeliveryInnerDataModelImplCopyWith<_$FreeDeliveryInnerDataModelImpl>
      get copyWith => __$$FreeDeliveryInnerDataModelImplCopyWithImpl<
          _$FreeDeliveryInnerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeDeliveryInnerDataModelImplToJson(
      this,
    );
  }
}

abstract class _FreeDeliveryInnerDataModel
    implements FreeDeliveryInnerDataModel {
  const factory _FreeDeliveryInnerDataModel(
      {final int? current_page,
      final List<ProductModel>? data,
      final String? first_page_url,
      final int? from,
      final int? last_page,
      final String? last_page_url,
      final String? next_page_url,
      final String? path,
      final int? per_page,
      final String? prev_page_url,
      final int? to,
      final int? total}) = _$FreeDeliveryInnerDataModelImpl;

  factory _FreeDeliveryInnerDataModel.fromJson(Map<String, dynamic> json) =
      _$FreeDeliveryInnerDataModelImpl.fromJson;

  @override
  int? get current_page;
  @override
  List<ProductModel>? get data;
  @override
  String? get first_page_url;
  @override
  int? get from;
  @override
  int? get last_page;
  @override
  String? get last_page_url;
  @override
  String? get next_page_url;
  @override
  String? get path;
  @override
  int? get per_page;
  @override
  String? get prev_page_url;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$FreeDeliveryInnerDataModelImplCopyWith<_$FreeDeliveryInnerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
