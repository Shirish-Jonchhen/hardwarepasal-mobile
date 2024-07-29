// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'render_view_front_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RenderViewFrontLinkModel _$RenderViewFrontLinkModelFromJson(
    Map<String, dynamic> json) {
  return _RenderViewFrontLinkModel.fromJson(json);
}

/// @nodoc
mixin _$RenderViewFrontLinkModel {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RenderViewFrontLinkModelCopyWith<RenderViewFrontLinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenderViewFrontLinkModelCopyWith<$Res> {
  factory $RenderViewFrontLinkModelCopyWith(RenderViewFrontLinkModel value,
          $Res Function(RenderViewFrontLinkModel) then) =
      _$RenderViewFrontLinkModelCopyWithImpl<$Res, RenderViewFrontLinkModel>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$RenderViewFrontLinkModelCopyWithImpl<$Res,
        $Val extends RenderViewFrontLinkModel>
    implements $RenderViewFrontLinkModelCopyWith<$Res> {
  _$RenderViewFrontLinkModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RenderViewFrontLinkModelImplCopyWith<$Res>
    implements $RenderViewFrontLinkModelCopyWith<$Res> {
  factory _$$RenderViewFrontLinkModelImplCopyWith(
          _$RenderViewFrontLinkModelImpl value,
          $Res Function(_$RenderViewFrontLinkModelImpl) then) =
      __$$RenderViewFrontLinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$RenderViewFrontLinkModelImplCopyWithImpl<$Res>
    extends _$RenderViewFrontLinkModelCopyWithImpl<$Res,
        _$RenderViewFrontLinkModelImpl>
    implements _$$RenderViewFrontLinkModelImplCopyWith<$Res> {
  __$$RenderViewFrontLinkModelImplCopyWithImpl(
      _$RenderViewFrontLinkModelImpl _value,
      $Res Function(_$RenderViewFrontLinkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$RenderViewFrontLinkModelImpl(
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
class _$RenderViewFrontLinkModelImpl implements _RenderViewFrontLinkModel {
  const _$RenderViewFrontLinkModelImpl({this.url, this.label, this.active});

  factory _$RenderViewFrontLinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenderViewFrontLinkModelImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'RenderViewFrontLinkModel(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenderViewFrontLinkModelImpl &&
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
  _$$RenderViewFrontLinkModelImplCopyWith<_$RenderViewFrontLinkModelImpl>
      get copyWith => __$$RenderViewFrontLinkModelImplCopyWithImpl<
          _$RenderViewFrontLinkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RenderViewFrontLinkModelImplToJson(
      this,
    );
  }
}

abstract class _RenderViewFrontLinkModel implements RenderViewFrontLinkModel {
  const factory _RenderViewFrontLinkModel(
      {final String? url,
      final String? label,
      final bool? active}) = _$RenderViewFrontLinkModelImpl;

  factory _RenderViewFrontLinkModel.fromJson(Map<String, dynamic> json) =
      _$RenderViewFrontLinkModelImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$RenderViewFrontLinkModelImplCopyWith<_$RenderViewFrontLinkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RenderViewFrontDataModel _$RenderViewFrontDataModelFromJson(
    Map<String, dynamic> json) {
  return _RenderViewFrontDataModel.fromJson(json);
}

/// @nodoc
mixin _$RenderViewFrontDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get iconclass => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get public_path => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RenderViewFrontDataModelCopyWith<RenderViewFrontDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenderViewFrontDataModelCopyWith<$Res> {
  factory $RenderViewFrontDataModelCopyWith(RenderViewFrontDataModel value,
          $Res Function(RenderViewFrontDataModel) then) =
      _$RenderViewFrontDataModelCopyWithImpl<$Res, RenderViewFrontDataModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      String? iconclass,
      String? icon,
      String? public_path,
      String? image_url});
}

/// @nodoc
class _$RenderViewFrontDataModelCopyWithImpl<$Res,
        $Val extends RenderViewFrontDataModel>
    implements $RenderViewFrontDataModelCopyWith<$Res> {
  _$RenderViewFrontDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? iconclass = freezed,
    Object? icon = freezed,
    Object? public_path = freezed,
    Object? image_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      iconclass: freezed == iconclass
          ? _value.iconclass
          : iconclass // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      public_path: freezed == public_path
          ? _value.public_path
          : public_path // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RenderViewFrontDataModelImplCopyWith<$Res>
    implements $RenderViewFrontDataModelCopyWith<$Res> {
  factory _$$RenderViewFrontDataModelImplCopyWith(
          _$RenderViewFrontDataModelImpl value,
          $Res Function(_$RenderViewFrontDataModelImpl) then) =
      __$$RenderViewFrontDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      String? iconclass,
      String? icon,
      String? public_path,
      String? image_url});
}

/// @nodoc
class __$$RenderViewFrontDataModelImplCopyWithImpl<$Res>
    extends _$RenderViewFrontDataModelCopyWithImpl<$Res,
        _$RenderViewFrontDataModelImpl>
    implements _$$RenderViewFrontDataModelImplCopyWith<$Res> {
  __$$RenderViewFrontDataModelImplCopyWithImpl(
      _$RenderViewFrontDataModelImpl _value,
      $Res Function(_$RenderViewFrontDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? iconclass = freezed,
    Object? icon = freezed,
    Object? public_path = freezed,
    Object? image_url = freezed,
  }) {
    return _then(_$RenderViewFrontDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      iconclass: freezed == iconclass
          ? _value.iconclass
          : iconclass // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      public_path: freezed == public_path
          ? _value.public_path
          : public_path // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$RenderViewFrontDataModelImpl implements _RenderViewFrontDataModel {
  const _$RenderViewFrontDataModelImpl(
      {this.id,
      this.name,
      this.slug,
      this.iconclass,
      this.icon,
      this.public_path,
      this.image_url});

  factory _$RenderViewFrontDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenderViewFrontDataModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? iconclass;
  @override
  final String? icon;
  @override
  final String? public_path;
  @override
  final String? image_url;

  @override
  String toString() {
    return 'RenderViewFrontDataModel(id: $id, name: $name, slug: $slug, iconclass: $iconclass, icon: $icon, public_path: $public_path, image_url: $image_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenderViewFrontDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.iconclass, iconclass) ||
                other.iconclass == iconclass) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.public_path, public_path) ||
                other.public_path == public_path) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, slug, iconclass, icon, public_path, image_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RenderViewFrontDataModelImplCopyWith<_$RenderViewFrontDataModelImpl>
      get copyWith => __$$RenderViewFrontDataModelImplCopyWithImpl<
          _$RenderViewFrontDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RenderViewFrontDataModelImplToJson(
      this,
    );
  }
}

abstract class _RenderViewFrontDataModel implements RenderViewFrontDataModel {
  const factory _RenderViewFrontDataModel(
      {final int? id,
      final String? name,
      final String? slug,
      final String? iconclass,
      final String? icon,
      final String? public_path,
      final String? image_url}) = _$RenderViewFrontDataModelImpl;

  factory _RenderViewFrontDataModel.fromJson(Map<String, dynamic> json) =
      _$RenderViewFrontDataModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get iconclass;
  @override
  String? get icon;
  @override
  String? get public_path;
  @override
  String? get image_url;
  @override
  @JsonKey(ignore: true)
  _$$RenderViewFrontDataModelImplCopyWith<_$RenderViewFrontDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RenderViewFrontModel _$RenderViewFrontModelFromJson(Map<String, dynamic> json) {
  return _RenderViewFrontModel.fromJson(json);
}

/// @nodoc
mixin _$RenderViewFrontModel {
  int? get current_page => throw _privateConstructorUsedError;
  List<RenderViewFrontDataModel>? get data =>
      throw _privateConstructorUsedError;
  String? get first_page_url => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get last_page => throw _privateConstructorUsedError;
  String? get last_page_url => throw _privateConstructorUsedError;
  List<RenderViewFrontLinkModel>? get links =>
      throw _privateConstructorUsedError;
  String? get next_page_url => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get per_page => throw _privateConstructorUsedError;
  String? get prev_page_url => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RenderViewFrontModelCopyWith<RenderViewFrontModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenderViewFrontModelCopyWith<$Res> {
  factory $RenderViewFrontModelCopyWith(RenderViewFrontModel value,
          $Res Function(RenderViewFrontModel) then) =
      _$RenderViewFrontModelCopyWithImpl<$Res, RenderViewFrontModel>;
  @useResult
  $Res call(
      {int? current_page,
      List<RenderViewFrontDataModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      List<RenderViewFrontLinkModel>? links,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class _$RenderViewFrontModelCopyWithImpl<$Res,
        $Val extends RenderViewFrontModel>
    implements $RenderViewFrontModelCopyWith<$Res> {
  _$RenderViewFrontModelCopyWithImpl(this._value, this._then);

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
              as List<RenderViewFrontDataModel>?,
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
              as List<RenderViewFrontLinkModel>?,
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
abstract class _$$RenderViewFrontModelImplCopyWith<$Res>
    implements $RenderViewFrontModelCopyWith<$Res> {
  factory _$$RenderViewFrontModelImplCopyWith(_$RenderViewFrontModelImpl value,
          $Res Function(_$RenderViewFrontModelImpl) then) =
      __$$RenderViewFrontModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? current_page,
      List<RenderViewFrontDataModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      List<RenderViewFrontLinkModel>? links,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class __$$RenderViewFrontModelImplCopyWithImpl<$Res>
    extends _$RenderViewFrontModelCopyWithImpl<$Res, _$RenderViewFrontModelImpl>
    implements _$$RenderViewFrontModelImplCopyWith<$Res> {
  __$$RenderViewFrontModelImplCopyWithImpl(_$RenderViewFrontModelImpl _value,
      $Res Function(_$RenderViewFrontModelImpl) _then)
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
    return _then(_$RenderViewFrontModelImpl(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RenderViewFrontDataModel>?,
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
              as List<RenderViewFrontLinkModel>?,
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
class _$RenderViewFrontModelImpl implements _RenderViewFrontModel {
  const _$RenderViewFrontModelImpl(
      {this.current_page,
      final List<RenderViewFrontDataModel>? data,
      this.first_page_url,
      this.from,
      this.last_page,
      this.last_page_url,
      final List<RenderViewFrontLinkModel>? links,
      this.next_page_url,
      this.path,
      this.per_page,
      this.prev_page_url,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$RenderViewFrontModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenderViewFrontModelImplFromJson(json);

  @override
  final int? current_page;
  final List<RenderViewFrontDataModel>? _data;
  @override
  List<RenderViewFrontDataModel>? get data {
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
  final List<RenderViewFrontLinkModel>? _links;
  @override
  List<RenderViewFrontLinkModel>? get links {
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
    return 'RenderViewFrontModel(current_page: $current_page, data: $data, first_page_url: $first_page_url, from: $from, last_page: $last_page, last_page_url: $last_page_url, links: $links, next_page_url: $next_page_url, path: $path, per_page: $per_page, prev_page_url: $prev_page_url, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenderViewFrontModelImpl &&
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
  _$$RenderViewFrontModelImplCopyWith<_$RenderViewFrontModelImpl>
      get copyWith =>
          __$$RenderViewFrontModelImplCopyWithImpl<_$RenderViewFrontModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RenderViewFrontModelImplToJson(
      this,
    );
  }
}

abstract class _RenderViewFrontModel implements RenderViewFrontModel {
  const factory _RenderViewFrontModel(
      {final int? current_page,
      final List<RenderViewFrontDataModel>? data,
      final String? first_page_url,
      final int? from,
      final int? last_page,
      final String? last_page_url,
      final List<RenderViewFrontLinkModel>? links,
      final String? next_page_url,
      final String? path,
      final int? per_page,
      final String? prev_page_url,
      final int? to,
      final int? total}) = _$RenderViewFrontModelImpl;

  factory _RenderViewFrontModel.fromJson(Map<String, dynamic> json) =
      _$RenderViewFrontModelImpl.fromJson;

  @override
  int? get current_page;
  @override
  List<RenderViewFrontDataModel>? get data;
  @override
  String? get first_page_url;
  @override
  int? get from;
  @override
  int? get last_page;
  @override
  String? get last_page_url;
  @override
  List<RenderViewFrontLinkModel>? get links;
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
  _$$RenderViewFrontModelImplCopyWith<_$RenderViewFrontModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
