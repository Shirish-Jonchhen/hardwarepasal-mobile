// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerLinkModel _$BannerLinkModelFromJson(Map<String, dynamic> json) {
  return _bannerLinkModel.fromJson(json);
}

/// @nodoc
mixin _$BannerLinkModel {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerLinkModelCopyWith<BannerLinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerLinkModelCopyWith<$Res> {
  factory $BannerLinkModelCopyWith(
          BannerLinkModel value, $Res Function(BannerLinkModel) then) =
      _$BannerLinkModelCopyWithImpl<$Res, BannerLinkModel>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$BannerLinkModelCopyWithImpl<$Res, $Val extends BannerLinkModel>
    implements $BannerLinkModelCopyWith<$Res> {
  _$BannerLinkModelCopyWithImpl(this._value, this._then);

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
abstract class _$$bannerLinkModelImplCopyWith<$Res>
    implements $BannerLinkModelCopyWith<$Res> {
  factory _$$bannerLinkModelImplCopyWith(_$bannerLinkModelImpl value,
          $Res Function(_$bannerLinkModelImpl) then) =
      __$$bannerLinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$bannerLinkModelImplCopyWithImpl<$Res>
    extends _$BannerLinkModelCopyWithImpl<$Res, _$bannerLinkModelImpl>
    implements _$$bannerLinkModelImplCopyWith<$Res> {
  __$$bannerLinkModelImplCopyWithImpl(
      _$bannerLinkModelImpl _value, $Res Function(_$bannerLinkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$bannerLinkModelImpl(
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
class _$bannerLinkModelImpl implements _bannerLinkModel {
  const _$bannerLinkModelImpl({this.url, this.label, this.active});

  factory _$bannerLinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$bannerLinkModelImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'BannerLinkModel(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$bannerLinkModelImpl &&
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
  _$$bannerLinkModelImplCopyWith<_$bannerLinkModelImpl> get copyWith =>
      __$$bannerLinkModelImplCopyWithImpl<_$bannerLinkModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$bannerLinkModelImplToJson(
      this,
    );
  }
}

abstract class _bannerLinkModel implements BannerLinkModel {
  const factory _bannerLinkModel(
      {final String? url,
      final String? label,
      final bool? active}) = _$bannerLinkModelImpl;

  factory _bannerLinkModel.fromJson(Map<String, dynamic> json) =
      _$bannerLinkModelImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$bannerLinkModelImplCopyWith<_$bannerLinkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerDataModel _$BannerDataModelFromJson(Map<String, dynamic> json) {
  return _BannerDataModel.fromJson(json);
}

/// @nodoc
mixin _$BannerDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get mobile_image => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  int? get home => throw _privateConstructorUsedError;
  int? get hpxpress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerDataModelCopyWith<BannerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDataModelCopyWith<$Res> {
  factory $BannerDataModelCopyWith(
          BannerDataModel value, $Res Function(BannerDataModel) then) =
      _$BannerDataModelCopyWithImpl<$Res, BannerDataModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      String? mobile_image,
      String? status,
      String? created_at,
      String? updated_at,
      String? link,
      int? home,
      int? hpxpress});
}

/// @nodoc
class _$BannerDataModelCopyWithImpl<$Res, $Val extends BannerDataModel>
    implements $BannerDataModelCopyWith<$Res> {
  _$BannerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? mobile_image = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? link = freezed,
    Object? home = freezed,
    Object? hpxpress = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_image: freezed == mobile_image
          ? _value.mobile_image
          : mobile_image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int?,
      hpxpress: freezed == hpxpress
          ? _value.hpxpress
          : hpxpress // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerDataModelImplCopyWith<$Res>
    implements $BannerDataModelCopyWith<$Res> {
  factory _$$BannerDataModelImplCopyWith(_$BannerDataModelImpl value,
          $Res Function(_$BannerDataModelImpl) then) =
      __$$BannerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      String? mobile_image,
      String? status,
      String? created_at,
      String? updated_at,
      String? link,
      int? home,
      int? hpxpress});
}

/// @nodoc
class __$$BannerDataModelImplCopyWithImpl<$Res>
    extends _$BannerDataModelCopyWithImpl<$Res, _$BannerDataModelImpl>
    implements _$$BannerDataModelImplCopyWith<$Res> {
  __$$BannerDataModelImplCopyWithImpl(
      _$BannerDataModelImpl _value, $Res Function(_$BannerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? mobile_image = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? link = freezed,
    Object? home = freezed,
    Object? hpxpress = freezed,
  }) {
    return _then(_$BannerDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_image: freezed == mobile_image
          ? _value.mobile_image
          : mobile_image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int?,
      hpxpress: freezed == hpxpress
          ? _value.hpxpress
          : hpxpress // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$BannerDataModelImpl implements _BannerDataModel {
  const _$BannerDataModelImpl(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.mobile_image,
      this.status,
      this.created_at,
      this.updated_at,
      this.link,
      this.home,
      this.hpxpress});

  factory _$BannerDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerDataModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? mobile_image;
  @override
  final String? status;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? link;
  @override
  final int? home;
  @override
  final int? hpxpress;

  @override
  String toString() {
    return 'BannerDataModel(id: $id, name: $name, description: $description, image: $image, mobile_image: $mobile_image, status: $status, created_at: $created_at, updated_at: $updated_at, link: $link, home: $home, hpxpress: $hpxpress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.mobile_image, mobile_image) ||
                other.mobile_image == mobile_image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.hpxpress, hpxpress) ||
                other.hpxpress == hpxpress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, image,
      mobile_image, status, created_at, updated_at, link, home, hpxpress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerDataModelImplCopyWith<_$BannerDataModelImpl> get copyWith =>
      __$$BannerDataModelImplCopyWithImpl<_$BannerDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerDataModelImplToJson(
      this,
    );
  }
}

abstract class _BannerDataModel implements BannerDataModel {
  const factory _BannerDataModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? image,
      final String? mobile_image,
      final String? status,
      final String? created_at,
      final String? updated_at,
      final String? link,
      final int? home,
      final int? hpxpress}) = _$BannerDataModelImpl;

  factory _BannerDataModel.fromJson(Map<String, dynamic> json) =
      _$BannerDataModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get mobile_image;
  @override
  String? get status;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get link;
  @override
  int? get home;
  @override
  int? get hpxpress;
  @override
  @JsonKey(ignore: true)
  _$$BannerDataModelImplCopyWith<_$BannerDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  int? get current_page => throw _privateConstructorUsedError;
  List<BannerDataModel>? get data => throw _privateConstructorUsedError;
  String? get first_page_url => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get last_page => throw _privateConstructorUsedError;
  String? get last_page_url => throw _privateConstructorUsedError;
  List<BannerLinkModel>? get links => throw _privateConstructorUsedError;
  String? get next_page_url => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get per_page => throw _privateConstructorUsedError;
  String? get prev_page_url => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call(
      {int? current_page,
      List<BannerDataModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      List<BannerLinkModel>? links,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

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
              as List<BannerDataModel>?,
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
              as List<BannerLinkModel>?,
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
abstract class _$$BannerModelImplCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$BannerModelImplCopyWith(
          _$BannerModelImpl value, $Res Function(_$BannerModelImpl) then) =
      __$$BannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? current_page,
      List<BannerDataModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      List<BannerLinkModel>? links,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class __$$BannerModelImplCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$BannerModelImpl>
    implements _$$BannerModelImplCopyWith<$Res> {
  __$$BannerModelImplCopyWithImpl(
      _$BannerModelImpl _value, $Res Function(_$BannerModelImpl) _then)
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
    return _then(_$BannerModelImpl(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BannerDataModel>?,
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
              as List<BannerLinkModel>?,
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
class _$BannerModelImpl implements _BannerModel {
  const _$BannerModelImpl(
      {this.current_page,
      final List<BannerDataModel>? data,
      this.first_page_url,
      this.from,
      this.last_page,
      this.last_page_url,
      final List<BannerLinkModel>? links,
      this.next_page_url,
      this.path,
      this.per_page,
      this.prev_page_url,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$BannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerModelImplFromJson(json);

  @override
  final int? current_page;
  final List<BannerDataModel>? _data;
  @override
  List<BannerDataModel>? get data {
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
  final List<BannerLinkModel>? _links;
  @override
  List<BannerLinkModel>? get links {
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
    return 'BannerModel(current_page: $current_page, data: $data, first_page_url: $first_page_url, from: $from, last_page: $last_page, last_page_url: $last_page_url, links: $links, next_page_url: $next_page_url, path: $path, per_page: $per_page, prev_page_url: $prev_page_url, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerModelImpl &&
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
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      __$$BannerModelImplCopyWithImpl<_$BannerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerModelImplToJson(
      this,
    );
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel(
      {final int? current_page,
      final List<BannerDataModel>? data,
      final String? first_page_url,
      final int? from,
      final int? last_page,
      final String? last_page_url,
      final List<BannerLinkModel>? links,
      final String? next_page_url,
      final String? path,
      final int? per_page,
      final String? prev_page_url,
      final int? to,
      final int? total}) = _$BannerModelImpl;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$BannerModelImpl.fromJson;

  @override
  int? get current_page;
  @override
  List<BannerDataModel>? get data;
  @override
  String? get first_page_url;
  @override
  int? get from;
  @override
  int? get last_page;
  @override
  String? get last_page_url;
  @override
  List<BannerLinkModel>? get links;
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
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
