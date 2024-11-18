// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_arrivals_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewArrivalsResponseModel _$NewArrivalsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _NewArrivalsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$NewArrivalsResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  NewArrivalsDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewArrivalsResponseModelCopyWith<NewArrivalsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewArrivalsResponseModelCopyWith<$Res> {
  factory $NewArrivalsResponseModelCopyWith(NewArrivalsResponseModel value,
          $Res Function(NewArrivalsResponseModel) then) =
      _$NewArrivalsResponseModelCopyWithImpl<$Res, NewArrivalsResponseModel>;
  @useResult
  $Res call({int? code, String? message, NewArrivalsDataModel? data});

  $NewArrivalsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$NewArrivalsResponseModelCopyWithImpl<$Res,
        $Val extends NewArrivalsResponseModel>
    implements $NewArrivalsResponseModelCopyWith<$Res> {
  _$NewArrivalsResponseModelCopyWithImpl(this._value, this._then);

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
              as NewArrivalsDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewArrivalsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NewArrivalsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewArrivalsResponseModelImplCopyWith<$Res>
    implements $NewArrivalsResponseModelCopyWith<$Res> {
  factory _$$NewArrivalsResponseModelImplCopyWith(
          _$NewArrivalsResponseModelImpl value,
          $Res Function(_$NewArrivalsResponseModelImpl) then) =
      __$$NewArrivalsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, NewArrivalsDataModel? data});

  @override
  $NewArrivalsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NewArrivalsResponseModelImplCopyWithImpl<$Res>
    extends _$NewArrivalsResponseModelCopyWithImpl<$Res,
        _$NewArrivalsResponseModelImpl>
    implements _$$NewArrivalsResponseModelImplCopyWith<$Res> {
  __$$NewArrivalsResponseModelImplCopyWithImpl(
      _$NewArrivalsResponseModelImpl _value,
      $Res Function(_$NewArrivalsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NewArrivalsResponseModelImpl(
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
              as NewArrivalsDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$NewArrivalsResponseModelImpl implements _NewArrivalsResponseModel {
  const _$NewArrivalsResponseModelImpl({this.code, this.message, this.data});

  factory _$NewArrivalsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewArrivalsResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final NewArrivalsDataModel? data;

  @override
  String toString() {
    return 'NewArrivalsResponseModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewArrivalsResponseModelImpl &&
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
  _$$NewArrivalsResponseModelImplCopyWith<_$NewArrivalsResponseModelImpl>
      get copyWith => __$$NewArrivalsResponseModelImplCopyWithImpl<
          _$NewArrivalsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewArrivalsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _NewArrivalsResponseModel implements NewArrivalsResponseModel {
  const factory _NewArrivalsResponseModel(
      {final int? code,
      final String? message,
      final NewArrivalsDataModel? data}) = _$NewArrivalsResponseModelImpl;

  factory _NewArrivalsResponseModel.fromJson(Map<String, dynamic> json) =
      _$NewArrivalsResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  NewArrivalsDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$NewArrivalsResponseModelImplCopyWith<_$NewArrivalsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewArrivalsDataModel _$NewArrivalsDataModelFromJson(Map<String, dynamic> json) {
  return _NewArrivalsDataModel.fromJson(json);
}

/// @nodoc
mixin _$NewArrivalsDataModel {
  NewArrivalsInnerDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewArrivalsDataModelCopyWith<NewArrivalsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewArrivalsDataModelCopyWith<$Res> {
  factory $NewArrivalsDataModelCopyWith(NewArrivalsDataModel value,
          $Res Function(NewArrivalsDataModel) then) =
      _$NewArrivalsDataModelCopyWithImpl<$Res, NewArrivalsDataModel>;
  @useResult
  $Res call({NewArrivalsInnerDataModel? data});

  $NewArrivalsInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$NewArrivalsDataModelCopyWithImpl<$Res,
        $Val extends NewArrivalsDataModel>
    implements $NewArrivalsDataModelCopyWith<$Res> {
  _$NewArrivalsDataModelCopyWithImpl(this._value, this._then);

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
              as NewArrivalsInnerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewArrivalsInnerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NewArrivalsInnerDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewArrivalsDataModelImplCopyWith<$Res>
    implements $NewArrivalsDataModelCopyWith<$Res> {
  factory _$$NewArrivalsDataModelImplCopyWith(_$NewArrivalsDataModelImpl value,
          $Res Function(_$NewArrivalsDataModelImpl) then) =
      __$$NewArrivalsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewArrivalsInnerDataModel? data});

  @override
  $NewArrivalsInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NewArrivalsDataModelImplCopyWithImpl<$Res>
    extends _$NewArrivalsDataModelCopyWithImpl<$Res, _$NewArrivalsDataModelImpl>
    implements _$$NewArrivalsDataModelImplCopyWith<$Res> {
  __$$NewArrivalsDataModelImplCopyWithImpl(_$NewArrivalsDataModelImpl _value,
      $Res Function(_$NewArrivalsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NewArrivalsDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewArrivalsInnerDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$NewArrivalsDataModelImpl implements _NewArrivalsDataModel {
  const _$NewArrivalsDataModelImpl({this.data});

  factory _$NewArrivalsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewArrivalsDataModelImplFromJson(json);

  @override
  final NewArrivalsInnerDataModel? data;

  @override
  String toString() {
    return 'NewArrivalsDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewArrivalsDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewArrivalsDataModelImplCopyWith<_$NewArrivalsDataModelImpl>
      get copyWith =>
          __$$NewArrivalsDataModelImplCopyWithImpl<_$NewArrivalsDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewArrivalsDataModelImplToJson(
      this,
    );
  }
}

abstract class _NewArrivalsDataModel implements NewArrivalsDataModel {
  const factory _NewArrivalsDataModel({final NewArrivalsInnerDataModel? data}) =
      _$NewArrivalsDataModelImpl;

  factory _NewArrivalsDataModel.fromJson(Map<String, dynamic> json) =
      _$NewArrivalsDataModelImpl.fromJson;

  @override
  NewArrivalsInnerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$NewArrivalsDataModelImplCopyWith<_$NewArrivalsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewArrivalsInnerDataModel _$NewArrivalsInnerDataModelFromJson(
    Map<String, dynamic> json) {
  return _NewArrivalsInnerDataModel.fromJson(json);
}

/// @nodoc
mixin _$NewArrivalsInnerDataModel {
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
  $NewArrivalsInnerDataModelCopyWith<NewArrivalsInnerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewArrivalsInnerDataModelCopyWith<$Res> {
  factory $NewArrivalsInnerDataModelCopyWith(NewArrivalsInnerDataModel value,
          $Res Function(NewArrivalsInnerDataModel) then) =
      _$NewArrivalsInnerDataModelCopyWithImpl<$Res, NewArrivalsInnerDataModel>;
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
class _$NewArrivalsInnerDataModelCopyWithImpl<$Res,
        $Val extends NewArrivalsInnerDataModel>
    implements $NewArrivalsInnerDataModelCopyWith<$Res> {
  _$NewArrivalsInnerDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$NewArrivalsInnerDataModelImplCopyWith<$Res>
    implements $NewArrivalsInnerDataModelCopyWith<$Res> {
  factory _$$NewArrivalsInnerDataModelImplCopyWith(
          _$NewArrivalsInnerDataModelImpl value,
          $Res Function(_$NewArrivalsInnerDataModelImpl) then) =
      __$$NewArrivalsInnerDataModelImplCopyWithImpl<$Res>;
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
class __$$NewArrivalsInnerDataModelImplCopyWithImpl<$Res>
    extends _$NewArrivalsInnerDataModelCopyWithImpl<$Res,
        _$NewArrivalsInnerDataModelImpl>
    implements _$$NewArrivalsInnerDataModelImplCopyWith<$Res> {
  __$$NewArrivalsInnerDataModelImplCopyWithImpl(
      _$NewArrivalsInnerDataModelImpl _value,
      $Res Function(_$NewArrivalsInnerDataModelImpl) _then)
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
    return _then(_$NewArrivalsInnerDataModelImpl(
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
class _$NewArrivalsInnerDataModelImpl implements _NewArrivalsInnerDataModel {
  const _$NewArrivalsInnerDataModelImpl(
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

  factory _$NewArrivalsInnerDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewArrivalsInnerDataModelImplFromJson(json);

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
    return 'NewArrivalsInnerDataModel(current_page: $current_page, data: $data, first_page_url: $first_page_url, from: $from, last_page: $last_page, last_page_url: $last_page_url, next_page_url: $next_page_url, path: $path, per_page: $per_page, prev_page_url: $prev_page_url, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewArrivalsInnerDataModelImpl &&
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
  _$$NewArrivalsInnerDataModelImplCopyWith<_$NewArrivalsInnerDataModelImpl>
      get copyWith => __$$NewArrivalsInnerDataModelImplCopyWithImpl<
          _$NewArrivalsInnerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewArrivalsInnerDataModelImplToJson(
      this,
    );
  }
}

abstract class _NewArrivalsInnerDataModel implements NewArrivalsInnerDataModel {
  const factory _NewArrivalsInnerDataModel(
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
      final int? total}) = _$NewArrivalsInnerDataModelImpl;

  factory _NewArrivalsInnerDataModel.fromJson(Map<String, dynamic> json) =
      _$NewArrivalsInnerDataModelImpl.fromJson;

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
  _$$NewArrivalsInnerDataModelImplCopyWith<_$NewArrivalsInnerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
