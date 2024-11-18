// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_deals_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotDealsResponseModel _$HotDealsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _HotDealsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HotDealsResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HotDealsDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotDealsResponseModelCopyWith<HotDealsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotDealsResponseModelCopyWith<$Res> {
  factory $HotDealsResponseModelCopyWith(HotDealsResponseModel value,
          $Res Function(HotDealsResponseModel) then) =
      _$HotDealsResponseModelCopyWithImpl<$Res, HotDealsResponseModel>;
  @useResult
  $Res call({int? code, String? message, HotDealsDataModel? data});

  $HotDealsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$HotDealsResponseModelCopyWithImpl<$Res,
        $Val extends HotDealsResponseModel>
    implements $HotDealsResponseModelCopyWith<$Res> {
  _$HotDealsResponseModelCopyWithImpl(this._value, this._then);

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
              as HotDealsDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotDealsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HotDealsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotDealsResponseModelImplCopyWith<$Res>
    implements $HotDealsResponseModelCopyWith<$Res> {
  factory _$$HotDealsResponseModelImplCopyWith(
          _$HotDealsResponseModelImpl value,
          $Res Function(_$HotDealsResponseModelImpl) then) =
      __$$HotDealsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, HotDealsDataModel? data});

  @override
  $HotDealsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$HotDealsResponseModelImplCopyWithImpl<$Res>
    extends _$HotDealsResponseModelCopyWithImpl<$Res,
        _$HotDealsResponseModelImpl>
    implements _$$HotDealsResponseModelImplCopyWith<$Res> {
  __$$HotDealsResponseModelImplCopyWithImpl(_$HotDealsResponseModelImpl _value,
      $Res Function(_$HotDealsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HotDealsResponseModelImpl(
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
              as HotDealsDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$HotDealsResponseModelImpl implements _HotDealsResponseModel {
  const _$HotDealsResponseModelImpl({this.code, this.message, this.data});

  factory _$HotDealsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotDealsResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final HotDealsDataModel? data;

  @override
  String toString() {
    return 'HotDealsResponseModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotDealsResponseModelImpl &&
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
  _$$HotDealsResponseModelImplCopyWith<_$HotDealsResponseModelImpl>
      get copyWith => __$$HotDealsResponseModelImplCopyWithImpl<
          _$HotDealsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotDealsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HotDealsResponseModel implements HotDealsResponseModel {
  const factory _HotDealsResponseModel(
      {final int? code,
      final String? message,
      final HotDealsDataModel? data}) = _$HotDealsResponseModelImpl;

  factory _HotDealsResponseModel.fromJson(Map<String, dynamic> json) =
      _$HotDealsResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  HotDealsDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$HotDealsResponseModelImplCopyWith<_$HotDealsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HotDealsDataModel _$HotDealsDataModelFromJson(Map<String, dynamic> json) {
  return _HotDealsDataModel.fromJson(json);
}

/// @nodoc
mixin _$HotDealsDataModel {
  HotDealsInnerDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotDealsDataModelCopyWith<HotDealsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotDealsDataModelCopyWith<$Res> {
  factory $HotDealsDataModelCopyWith(
          HotDealsDataModel value, $Res Function(HotDealsDataModel) then) =
      _$HotDealsDataModelCopyWithImpl<$Res, HotDealsDataModel>;
  @useResult
  $Res call({HotDealsInnerDataModel? data});

  $HotDealsInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$HotDealsDataModelCopyWithImpl<$Res, $Val extends HotDealsDataModel>
    implements $HotDealsDataModelCopyWith<$Res> {
  _$HotDealsDataModelCopyWithImpl(this._value, this._then);

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
              as HotDealsInnerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotDealsInnerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HotDealsInnerDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotDealsDataModelImplCopyWith<$Res>
    implements $HotDealsDataModelCopyWith<$Res> {
  factory _$$HotDealsDataModelImplCopyWith(_$HotDealsDataModelImpl value,
          $Res Function(_$HotDealsDataModelImpl) then) =
      __$$HotDealsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HotDealsInnerDataModel? data});

  @override
  $HotDealsInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$HotDealsDataModelImplCopyWithImpl<$Res>
    extends _$HotDealsDataModelCopyWithImpl<$Res, _$HotDealsDataModelImpl>
    implements _$$HotDealsDataModelImplCopyWith<$Res> {
  __$$HotDealsDataModelImplCopyWithImpl(_$HotDealsDataModelImpl _value,
      $Res Function(_$HotDealsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$HotDealsDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HotDealsInnerDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$HotDealsDataModelImpl implements _HotDealsDataModel {
  const _$HotDealsDataModelImpl({this.data});

  factory _$HotDealsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotDealsDataModelImplFromJson(json);

  @override
  final HotDealsInnerDataModel? data;

  @override
  String toString() {
    return 'HotDealsDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotDealsDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotDealsDataModelImplCopyWith<_$HotDealsDataModelImpl> get copyWith =>
      __$$HotDealsDataModelImplCopyWithImpl<_$HotDealsDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotDealsDataModelImplToJson(
      this,
    );
  }
}

abstract class _HotDealsDataModel implements HotDealsDataModel {
  const factory _HotDealsDataModel({final HotDealsInnerDataModel? data}) =
      _$HotDealsDataModelImpl;

  factory _HotDealsDataModel.fromJson(Map<String, dynamic> json) =
      _$HotDealsDataModelImpl.fromJson;

  @override
  HotDealsInnerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$HotDealsDataModelImplCopyWith<_$HotDealsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotDealsInnerDataModel _$HotDealsInnerDataModelFromJson(
    Map<String, dynamic> json) {
  return _HotDealsInnerDataModel.fromJson(json);
}

/// @nodoc
mixin _$HotDealsInnerDataModel {
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
  $HotDealsInnerDataModelCopyWith<HotDealsInnerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotDealsInnerDataModelCopyWith<$Res> {
  factory $HotDealsInnerDataModelCopyWith(HotDealsInnerDataModel value,
          $Res Function(HotDealsInnerDataModel) then) =
      _$HotDealsInnerDataModelCopyWithImpl<$Res, HotDealsInnerDataModel>;
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
class _$HotDealsInnerDataModelCopyWithImpl<$Res,
        $Val extends HotDealsInnerDataModel>
    implements $HotDealsInnerDataModelCopyWith<$Res> {
  _$HotDealsInnerDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$HotDealsInnerDataModelImplCopyWith<$Res>
    implements $HotDealsInnerDataModelCopyWith<$Res> {
  factory _$$HotDealsInnerDataModelImplCopyWith(
          _$HotDealsInnerDataModelImpl value,
          $Res Function(_$HotDealsInnerDataModelImpl) then) =
      __$$HotDealsInnerDataModelImplCopyWithImpl<$Res>;
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
class __$$HotDealsInnerDataModelImplCopyWithImpl<$Res>
    extends _$HotDealsInnerDataModelCopyWithImpl<$Res,
        _$HotDealsInnerDataModelImpl>
    implements _$$HotDealsInnerDataModelImplCopyWith<$Res> {
  __$$HotDealsInnerDataModelImplCopyWithImpl(
      _$HotDealsInnerDataModelImpl _value,
      $Res Function(_$HotDealsInnerDataModelImpl) _then)
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
    return _then(_$HotDealsInnerDataModelImpl(
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
class _$HotDealsInnerDataModelImpl implements _HotDealsInnerDataModel {
  const _$HotDealsInnerDataModelImpl(
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

  factory _$HotDealsInnerDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotDealsInnerDataModelImplFromJson(json);

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
    return 'HotDealsInnerDataModel(current_page: $current_page, data: $data, first_page_url: $first_page_url, from: $from, last_page: $last_page, last_page_url: $last_page_url, next_page_url: $next_page_url, path: $path, per_page: $per_page, prev_page_url: $prev_page_url, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotDealsInnerDataModelImpl &&
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
  _$$HotDealsInnerDataModelImplCopyWith<_$HotDealsInnerDataModelImpl>
      get copyWith => __$$HotDealsInnerDataModelImplCopyWithImpl<
          _$HotDealsInnerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotDealsInnerDataModelImplToJson(
      this,
    );
  }
}

abstract class _HotDealsInnerDataModel implements HotDealsInnerDataModel {
  const factory _HotDealsInnerDataModel(
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
      final int? total}) = _$HotDealsInnerDataModelImpl;

  factory _HotDealsInnerDataModel.fromJson(Map<String, dynamic> json) =
      _$HotDealsInnerDataModelImpl.fromJson;

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
  _$$HotDealsInnerDataModelImplCopyWith<_$HotDealsInnerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
