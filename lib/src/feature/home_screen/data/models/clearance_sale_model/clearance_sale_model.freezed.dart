// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clearance_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClearanceSaleLinkModel _$ClearanceSaleLinkModelFromJson(
    Map<String, dynamic> json) {
  return _ClearanceSaleLinkModel.fromJson(json);
}

/// @nodoc
mixin _$ClearanceSaleLinkModel {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClearanceSaleLinkModelCopyWith<ClearanceSaleLinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearanceSaleLinkModelCopyWith<$Res> {
  factory $ClearanceSaleLinkModelCopyWith(ClearanceSaleLinkModel value,
          $Res Function(ClearanceSaleLinkModel) then) =
      _$ClearanceSaleLinkModelCopyWithImpl<$Res, ClearanceSaleLinkModel>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$ClearanceSaleLinkModelCopyWithImpl<$Res,
        $Val extends ClearanceSaleLinkModel>
    implements $ClearanceSaleLinkModelCopyWith<$Res> {
  _$ClearanceSaleLinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClearanceSaleLinkModelImplCopyWith<$Res>
    implements $ClearanceSaleLinkModelCopyWith<$Res> {
  factory _$$ClearanceSaleLinkModelImplCopyWith(
          _$ClearanceSaleLinkModelImpl value,
          $Res Function(_$ClearanceSaleLinkModelImpl) then) =
      __$$ClearanceSaleLinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$ClearanceSaleLinkModelImplCopyWithImpl<$Res>
    extends _$ClearanceSaleLinkModelCopyWithImpl<$Res,
        _$ClearanceSaleLinkModelImpl>
    implements _$$ClearanceSaleLinkModelImplCopyWith<$Res> {
  __$$ClearanceSaleLinkModelImplCopyWithImpl(
      _$ClearanceSaleLinkModelImpl _value,
      $Res Function(_$ClearanceSaleLinkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$ClearanceSaleLinkModelImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ClearanceSaleLinkModelImpl implements _ClearanceSaleLinkModel {
  const _$ClearanceSaleLinkModelImpl({this.url, this.label, this.active});

  factory _$ClearanceSaleLinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClearanceSaleLinkModelImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'ClearanceSaleLinkModel(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearanceSaleLinkModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearanceSaleLinkModelImplCopyWith<_$ClearanceSaleLinkModelImpl>
      get copyWith => __$$ClearanceSaleLinkModelImplCopyWithImpl<
          _$ClearanceSaleLinkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClearanceSaleLinkModelImplToJson(
      this,
    );
  }
}

abstract class _ClearanceSaleLinkModel implements ClearanceSaleLinkModel {
  const factory _ClearanceSaleLinkModel(
      {final String? url,
      final String? label,
      final bool? active}) = _$ClearanceSaleLinkModelImpl;

  factory _ClearanceSaleLinkModel.fromJson(Map<String, dynamic> json) =
      _$ClearanceSaleLinkModelImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$ClearanceSaleLinkModelImplCopyWith<_$ClearanceSaleLinkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClearanceSaleModel _$ClearanceSaleModelFromJson(Map<String, dynamic> json) {
  return _ClearanceSaleModel.fromJson(json);
}

/// @nodoc
mixin _$ClearanceSaleModel {
  int? get current_page => throw _privateConstructorUsedError;
  List<ProductModel>? get data => throw _privateConstructorUsedError;
  String? get first_page_url => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get last_page => throw _privateConstructorUsedError;
  String? get last_page_url => throw _privateConstructorUsedError;
  List<ClearanceSaleLinkModel>? get links => throw _privateConstructorUsedError;
  String? get next_page_url => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get per_page => throw _privateConstructorUsedError;
  String? get prev_page_url => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClearanceSaleModelCopyWith<ClearanceSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearanceSaleModelCopyWith<$Res> {
  factory $ClearanceSaleModelCopyWith(
          ClearanceSaleModel value, $Res Function(ClearanceSaleModel) then) =
      _$ClearanceSaleModelCopyWithImpl<$Res, ClearanceSaleModel>;
  @useResult
  $Res call(
      {int? current_page,
      List<ProductModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      List<ClearanceSaleLinkModel>? links,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class _$ClearanceSaleModelCopyWithImpl<$Res, $Val extends ClearanceSaleModel>
    implements $ClearanceSaleModelCopyWith<$Res> {
  _$ClearanceSaleModelCopyWithImpl(this._value, this._then);

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
    Object? links = freezed,
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
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<ClearanceSaleLinkModel>?,
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
abstract class _$$ClearanceSaleModelImplCopyWith<$Res>
    implements $ClearanceSaleModelCopyWith<$Res> {
  factory _$$ClearanceSaleModelImplCopyWith(_$ClearanceSaleModelImpl value,
          $Res Function(_$ClearanceSaleModelImpl) then) =
      __$$ClearanceSaleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? current_page,
      List<ProductModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      List<ClearanceSaleLinkModel>? links,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class __$$ClearanceSaleModelImplCopyWithImpl<$Res>
    extends _$ClearanceSaleModelCopyWithImpl<$Res, _$ClearanceSaleModelImpl>
    implements _$$ClearanceSaleModelImplCopyWith<$Res> {
  __$$ClearanceSaleModelImplCopyWithImpl(_$ClearanceSaleModelImpl _value,
      $Res Function(_$ClearanceSaleModelImpl) _then)
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
    Object? links = freezed,
    Object? next_page_url = freezed,
    Object? path = freezed,
    Object? per_page = freezed,
    Object? prev_page_url = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$ClearanceSaleModelImpl(
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
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<ClearanceSaleLinkModel>?,
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
class _$ClearanceSaleModelImpl implements _ClearanceSaleModel {
  const _$ClearanceSaleModelImpl(
      {this.current_page,
      final List<ProductModel>? data,
      this.first_page_url,
      this.from,
      this.last_page,
      this.last_page_url,
      final List<ClearanceSaleLinkModel>? links,
      this.next_page_url,
      this.path,
      this.per_page,
      this.prev_page_url,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$ClearanceSaleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClearanceSaleModelImplFromJson(json);

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
  final List<ClearanceSaleLinkModel>? _links;
  @override
  List<ClearanceSaleLinkModel>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'ClearanceSaleModel(current_page: $current_page, data: $data, first_page_url: $first_page_url, from: $from, last_page: $last_page, last_page_url: $last_page_url, links: $links, next_page_url: $next_page_url, path: $path, per_page: $per_page, prev_page_url: $prev_page_url, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearanceSaleModelImpl &&
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
            const DeepCollectionEquality().equals(other._links, _links) &&
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
      const DeepCollectionEquality().hash(_links),
      next_page_url,
      path,
      per_page,
      prev_page_url,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearanceSaleModelImplCopyWith<_$ClearanceSaleModelImpl> get copyWith =>
      __$$ClearanceSaleModelImplCopyWithImpl<_$ClearanceSaleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClearanceSaleModelImplToJson(
      this,
    );
  }
}

abstract class _ClearanceSaleModel implements ClearanceSaleModel {
  const factory _ClearanceSaleModel(
      {final int? current_page,
      final List<ProductModel>? data,
      final String? first_page_url,
      final int? from,
      final int? last_page,
      final String? last_page_url,
      final List<ClearanceSaleLinkModel>? links,
      final String? next_page_url,
      final String? path,
      final int? per_page,
      final String? prev_page_url,
      final int? to,
      final int? total}) = _$ClearanceSaleModelImpl;

  factory _ClearanceSaleModel.fromJson(Map<String, dynamic> json) =
      _$ClearanceSaleModelImpl.fromJson;

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
  List<ClearanceSaleLinkModel>? get links;
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
  _$$ClearanceSaleModelImplCopyWith<_$ClearanceSaleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
