// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CategoryDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call({int? code, String? message, CategoryDataModel? data});

  $CategoryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

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
              as CategoryDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CategoryDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, CategoryDataModel? data});

  @override
  $CategoryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CategoryModelImpl(
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
              as CategoryDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl({this.code, this.message, this.data});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final CategoryDataModel? data;

  @override
  String toString() {
    return 'CategoryModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
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
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      {final int? code,
      final String? message,
      final CategoryDataModel? data}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  CategoryDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDataModel _$CategoryDataModelFromJson(Map<String, dynamic> json) {
  return _CategoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryDataModel {
  List<CategoryItemModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDataModelCopyWith<CategoryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataModelCopyWith<$Res> {
  factory $CategoryDataModelCopyWith(
          CategoryDataModel value, $Res Function(CategoryDataModel) then) =
      _$CategoryDataModelCopyWithImpl<$Res, CategoryDataModel>;
  @useResult
  $Res call({List<CategoryItemModel>? data});
}

/// @nodoc
class _$CategoryDataModelCopyWithImpl<$Res, $Val extends CategoryDataModel>
    implements $CategoryDataModelCopyWith<$Res> {
  _$CategoryDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CategoryDataModelImplCopyWith<$Res>
    implements $CategoryDataModelCopyWith<$Res> {
  factory _$$CategoryDataModelImplCopyWith(_$CategoryDataModelImpl value,
          $Res Function(_$CategoryDataModelImpl) then) =
      __$$CategoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryItemModel>? data});
}

/// @nodoc
class __$$CategoryDataModelImplCopyWithImpl<$Res>
    extends _$CategoryDataModelCopyWithImpl<$Res, _$CategoryDataModelImpl>
    implements _$$CategoryDataModelImplCopyWith<$Res> {
  __$$CategoryDataModelImplCopyWithImpl(_$CategoryDataModelImpl _value,
      $Res Function(_$CategoryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CategoryDataModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$CategoryDataModelImpl implements _CategoryDataModel {
  const _$CategoryDataModelImpl({required final List<CategoryItemModel>? data})
      : _data = data;

  factory _$CategoryDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDataModelImplFromJson(json);

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
    return 'CategoryDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDataModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDataModelImplCopyWith<_$CategoryDataModelImpl> get copyWith =>
      __$$CategoryDataModelImplCopyWithImpl<_$CategoryDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDataModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryDataModel implements CategoryDataModel {
  const factory _CategoryDataModel(
      {required final List<CategoryItemModel>? data}) = _$CategoryDataModelImpl;

  factory _CategoryDataModel.fromJson(Map<String, dynamic> json) =
      _$CategoryDataModelImpl.fromJson;

  @override
  List<CategoryItemModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDataModelImplCopyWith<_$CategoryDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryItemModel _$CategoryItemModelFromJson(Map<String, dynamic> json) {
  return _CategoryItemModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get iconclass => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get sup_cat_id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get created_by => throw _privateConstructorUsedError;
  int? get updated_by => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get meta_keywords => throw _privateConstructorUsedError;
  String? get meta_description => throw _privateConstructorUsedError;
  String? get meta_title => throw _privateConstructorUsedError;
  int? get is_grouping => throw _privateConstructorUsedError;
  int? get diaplay => throw _privateConstructorUsedError;
  String? get show_on_home => throw _privateConstructorUsedError;
  String? get offer_text => throw _privateConstructorUsedError;
  String? get display_text => throw _privateConstructorUsedError;
  String? get svg_icon => throw _privateConstructorUsedError;
  String? get public_path => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  List<CategoryItemModel>? get sub_categories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryItemModelCopyWith<CategoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemModelCopyWith<$Res> {
  factory $CategoryItemModelCopyWith(
          CategoryItemModel value, $Res Function(CategoryItemModel) then) =
      _$CategoryItemModelCopyWithImpl<$Res, CategoryItemModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? icon,
      String? iconclass,
      String? slug,
      int? sup_cat_id,
      String? status,
      int? created_by,
      int? updated_by,
      String? created_at,
      String? updated_at,
      String? meta_keywords,
      String? meta_description,
      String? meta_title,
      int? is_grouping,
      int? diaplay,
      String? show_on_home,
      String? offer_text,
      String? display_text,
      String? svg_icon,
      String? public_path,
      String? image_url,
      List<CategoryItemModel>? sub_categories});
}

/// @nodoc
class _$CategoryItemModelCopyWithImpl<$Res, $Val extends CategoryItemModel>
    implements $CategoryItemModelCopyWith<$Res> {
  _$CategoryItemModelCopyWithImpl(this._value, this._then);

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
    Object? icon = freezed,
    Object? iconclass = freezed,
    Object? slug = freezed,
    Object? sup_cat_id = freezed,
    Object? status = freezed,
    Object? created_by = freezed,
    Object? updated_by = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? meta_keywords = freezed,
    Object? meta_description = freezed,
    Object? meta_title = freezed,
    Object? is_grouping = freezed,
    Object? diaplay = freezed,
    Object? show_on_home = freezed,
    Object? offer_text = freezed,
    Object? display_text = freezed,
    Object? svg_icon = freezed,
    Object? public_path = freezed,
    Object? image_url = freezed,
    Object? sub_categories = freezed,
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
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconclass: freezed == iconclass
          ? _value.iconclass
          : iconclass // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      sup_cat_id: freezed == sup_cat_id
          ? _value.sup_cat_id
          : sup_cat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_by: freezed == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_by: freezed == updated_by
          ? _value.updated_by
          : updated_by // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_keywords: freezed == meta_keywords
          ? _value.meta_keywords
          : meta_keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: freezed == meta_description
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_title: freezed == meta_title
          ? _value.meta_title
          : meta_title // ignore: cast_nullable_to_non_nullable
              as String?,
      is_grouping: freezed == is_grouping
          ? _value.is_grouping
          : is_grouping // ignore: cast_nullable_to_non_nullable
              as int?,
      diaplay: freezed == diaplay
          ? _value.diaplay
          : diaplay // ignore: cast_nullable_to_non_nullable
              as int?,
      show_on_home: freezed == show_on_home
          ? _value.show_on_home
          : show_on_home // ignore: cast_nullable_to_non_nullable
              as String?,
      offer_text: freezed == offer_text
          ? _value.offer_text
          : offer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      display_text: freezed == display_text
          ? _value.display_text
          : display_text // ignore: cast_nullable_to_non_nullable
              as String?,
      svg_icon: freezed == svg_icon
          ? _value.svg_icon
          : svg_icon // ignore: cast_nullable_to_non_nullable
              as String?,
      public_path: freezed == public_path
          ? _value.public_path
          : public_path // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      sub_categories: freezed == sub_categories
          ? _value.sub_categories
          : sub_categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryItemModelImplCopyWith<$Res>
    implements $CategoryItemModelCopyWith<$Res> {
  factory _$$CategoryItemModelImplCopyWith(_$CategoryItemModelImpl value,
          $Res Function(_$CategoryItemModelImpl) then) =
      __$$CategoryItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? icon,
      String? iconclass,
      String? slug,
      int? sup_cat_id,
      String? status,
      int? created_by,
      int? updated_by,
      String? created_at,
      String? updated_at,
      String? meta_keywords,
      String? meta_description,
      String? meta_title,
      int? is_grouping,
      int? diaplay,
      String? show_on_home,
      String? offer_text,
      String? display_text,
      String? svg_icon,
      String? public_path,
      String? image_url,
      List<CategoryItemModel>? sub_categories});
}

/// @nodoc
class __$$CategoryItemModelImplCopyWithImpl<$Res>
    extends _$CategoryItemModelCopyWithImpl<$Res, _$CategoryItemModelImpl>
    implements _$$CategoryItemModelImplCopyWith<$Res> {
  __$$CategoryItemModelImplCopyWithImpl(_$CategoryItemModelImpl _value,
      $Res Function(_$CategoryItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? icon = freezed,
    Object? iconclass = freezed,
    Object? slug = freezed,
    Object? sup_cat_id = freezed,
    Object? status = freezed,
    Object? created_by = freezed,
    Object? updated_by = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? meta_keywords = freezed,
    Object? meta_description = freezed,
    Object? meta_title = freezed,
    Object? is_grouping = freezed,
    Object? diaplay = freezed,
    Object? show_on_home = freezed,
    Object? offer_text = freezed,
    Object? display_text = freezed,
    Object? svg_icon = freezed,
    Object? public_path = freezed,
    Object? image_url = freezed,
    Object? sub_categories = freezed,
  }) {
    return _then(_$CategoryItemModelImpl(
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
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconclass: freezed == iconclass
          ? _value.iconclass
          : iconclass // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      sup_cat_id: freezed == sup_cat_id
          ? _value.sup_cat_id
          : sup_cat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_by: freezed == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_by: freezed == updated_by
          ? _value.updated_by
          : updated_by // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_keywords: freezed == meta_keywords
          ? _value.meta_keywords
          : meta_keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: freezed == meta_description
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_title: freezed == meta_title
          ? _value.meta_title
          : meta_title // ignore: cast_nullable_to_non_nullable
              as String?,
      is_grouping: freezed == is_grouping
          ? _value.is_grouping
          : is_grouping // ignore: cast_nullable_to_non_nullable
              as int?,
      diaplay: freezed == diaplay
          ? _value.diaplay
          : diaplay // ignore: cast_nullable_to_non_nullable
              as int?,
      show_on_home: freezed == show_on_home
          ? _value.show_on_home
          : show_on_home // ignore: cast_nullable_to_non_nullable
              as String?,
      offer_text: freezed == offer_text
          ? _value.offer_text
          : offer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      display_text: freezed == display_text
          ? _value.display_text
          : display_text // ignore: cast_nullable_to_non_nullable
              as String?,
      svg_icon: freezed == svg_icon
          ? _value.svg_icon
          : svg_icon // ignore: cast_nullable_to_non_nullable
              as String?,
      public_path: freezed == public_path
          ? _value.public_path
          : public_path // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      sub_categories: freezed == sub_categories
          ? _value._sub_categories
          : sub_categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$CategoryItemModelImpl implements _CategoryItemModel {
  const _$CategoryItemModelImpl(
      {this.id,
      this.name,
      this.description,
      this.icon,
      this.iconclass,
      this.slug,
      this.sup_cat_id,
      this.status,
      this.created_by,
      this.updated_by,
      this.created_at,
      this.updated_at,
      this.meta_keywords,
      this.meta_description,
      this.meta_title,
      this.is_grouping,
      this.diaplay,
      this.show_on_home,
      this.offer_text,
      this.display_text,
      this.svg_icon,
      this.public_path,
      this.image_url,
      final List<CategoryItemModel>? sub_categories})
      : _sub_categories = sub_categories;

  factory _$CategoryItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? icon;
  @override
  final String? iconclass;
  @override
  final String? slug;
  @override
  final int? sup_cat_id;
  @override
  final String? status;
  @override
  final int? created_by;
  @override
  final int? updated_by;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? meta_keywords;
  @override
  final String? meta_description;
  @override
  final String? meta_title;
  @override
  final int? is_grouping;
  @override
  final int? diaplay;
  @override
  final String? show_on_home;
  @override
  final String? offer_text;
  @override
  final String? display_text;
  @override
  final String? svg_icon;
  @override
  final String? public_path;
  @override
  final String? image_url;
  final List<CategoryItemModel>? _sub_categories;
  @override
  List<CategoryItemModel>? get sub_categories {
    final value = _sub_categories;
    if (value == null) return null;
    if (_sub_categories is EqualUnmodifiableListView) return _sub_categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryItemModel(id: $id, name: $name, description: $description, icon: $icon, iconclass: $iconclass, slug: $slug, sup_cat_id: $sup_cat_id, status: $status, created_by: $created_by, updated_by: $updated_by, created_at: $created_at, updated_at: $updated_at, meta_keywords: $meta_keywords, meta_description: $meta_description, meta_title: $meta_title, is_grouping: $is_grouping, diaplay: $diaplay, show_on_home: $show_on_home, offer_text: $offer_text, display_text: $display_text, svg_icon: $svg_icon, public_path: $public_path, image_url: $image_url, sub_categories: $sub_categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconclass, iconclass) ||
                other.iconclass == iconclass) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.sup_cat_id, sup_cat_id) ||
                other.sup_cat_id == sup_cat_id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_by, created_by) ||
                other.created_by == created_by) &&
            (identical(other.updated_by, updated_by) ||
                other.updated_by == updated_by) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.meta_keywords, meta_keywords) ||
                other.meta_keywords == meta_keywords) &&
            (identical(other.meta_description, meta_description) ||
                other.meta_description == meta_description) &&
            (identical(other.meta_title, meta_title) ||
                other.meta_title == meta_title) &&
            (identical(other.is_grouping, is_grouping) ||
                other.is_grouping == is_grouping) &&
            (identical(other.diaplay, diaplay) || other.diaplay == diaplay) &&
            (identical(other.show_on_home, show_on_home) ||
                other.show_on_home == show_on_home) &&
            (identical(other.offer_text, offer_text) ||
                other.offer_text == offer_text) &&
            (identical(other.display_text, display_text) ||
                other.display_text == display_text) &&
            (identical(other.svg_icon, svg_icon) ||
                other.svg_icon == svg_icon) &&
            (identical(other.public_path, public_path) ||
                other.public_path == public_path) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            const DeepCollectionEquality()
                .equals(other._sub_categories, _sub_categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        icon,
        iconclass,
        slug,
        sup_cat_id,
        status,
        created_by,
        updated_by,
        created_at,
        updated_at,
        meta_keywords,
        meta_description,
        meta_title,
        is_grouping,
        diaplay,
        show_on_home,
        offer_text,
        display_text,
        svg_icon,
        public_path,
        image_url,
        const DeepCollectionEquality().hash(_sub_categories)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryItemModelImplCopyWith<_$CategoryItemModelImpl> get copyWith =>
      __$$CategoryItemModelImplCopyWithImpl<_$CategoryItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryItemModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryItemModel implements CategoryItemModel {
  const factory _CategoryItemModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? icon,
      final String? iconclass,
      final String? slug,
      final int? sup_cat_id,
      final String? status,
      final int? created_by,
      final int? updated_by,
      final String? created_at,
      final String? updated_at,
      final String? meta_keywords,
      final String? meta_description,
      final String? meta_title,
      final int? is_grouping,
      final int? diaplay,
      final String? show_on_home,
      final String? offer_text,
      final String? display_text,
      final String? svg_icon,
      final String? public_path,
      final String? image_url,
      final List<CategoryItemModel>? sub_categories}) = _$CategoryItemModelImpl;

  factory _CategoryItemModel.fromJson(Map<String, dynamic> json) =
      _$CategoryItemModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  String? get iconclass;
  @override
  String? get slug;
  @override
  int? get sup_cat_id;
  @override
  String? get status;
  @override
  int? get created_by;
  @override
  int? get updated_by;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get meta_keywords;
  @override
  String? get meta_description;
  @override
  String? get meta_title;
  @override
  int? get is_grouping;
  @override
  int? get diaplay;
  @override
  String? get show_on_home;
  @override
  String? get offer_text;
  @override
  String? get display_text;
  @override
  String? get svg_icon;
  @override
  String? get public_path;
  @override
  String? get image_url;
  @override
  List<CategoryItemModel>? get sub_categories;
  @override
  @JsonKey(ignore: true)
  _$$CategoryItemModelImplCopyWith<_$CategoryItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
