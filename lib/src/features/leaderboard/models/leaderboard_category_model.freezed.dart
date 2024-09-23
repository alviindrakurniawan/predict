// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaderboardCategoryModel _$LeaderboardCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _LeaderboardCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardCategoryModel {
  String? get responseMessage => throw _privateConstructorUsedError;
  LeaderboardCategoryData? get data => throw _privateConstructorUsedError;

  /// Serializes this LeaderboardCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardCategoryModelCopyWith<LeaderboardCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardCategoryModelCopyWith<$Res> {
  factory $LeaderboardCategoryModelCopyWith(LeaderboardCategoryModel value,
          $Res Function(LeaderboardCategoryModel) then) =
      _$LeaderboardCategoryModelCopyWithImpl<$Res, LeaderboardCategoryModel>;
  @useResult
  $Res call({String? responseMessage, LeaderboardCategoryData? data});

  $LeaderboardCategoryDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LeaderboardCategoryModelCopyWithImpl<$Res,
        $Val extends LeaderboardCategoryModel>
    implements $LeaderboardCategoryModelCopyWith<$Res> {
  _$LeaderboardCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LeaderboardCategoryData?,
    ) as $Val);
  }

  /// Create a copy of LeaderboardCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaderboardCategoryDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LeaderboardCategoryDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaderboardCategoryModelImplCopyWith<$Res>
    implements $LeaderboardCategoryModelCopyWith<$Res> {
  factory _$$LeaderboardCategoryModelImplCopyWith(
          _$LeaderboardCategoryModelImpl value,
          $Res Function(_$LeaderboardCategoryModelImpl) then) =
      __$$LeaderboardCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? responseMessage, LeaderboardCategoryData? data});

  @override
  $LeaderboardCategoryDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LeaderboardCategoryModelImplCopyWithImpl<$Res>
    extends _$LeaderboardCategoryModelCopyWithImpl<$Res,
        _$LeaderboardCategoryModelImpl>
    implements _$$LeaderboardCategoryModelImplCopyWith<$Res> {
  __$$LeaderboardCategoryModelImplCopyWithImpl(
      _$LeaderboardCategoryModelImpl _value,
      $Res Function(_$LeaderboardCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LeaderboardCategoryModelImpl(
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LeaderboardCategoryData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardCategoryModelImpl implements _LeaderboardCategoryModel {
  const _$LeaderboardCategoryModelImpl({this.responseMessage, this.data});

  factory _$LeaderboardCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardCategoryModelImplFromJson(json);

  @override
  final String? responseMessage;
  @override
  final LeaderboardCategoryData? data;

  @override
  String toString() {
    return 'LeaderboardCategoryModel(responseMessage: $responseMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardCategoryModelImpl &&
            (identical(other.responseMessage, responseMessage) ||
                other.responseMessage == responseMessage) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responseMessage, data);

  /// Create a copy of LeaderboardCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardCategoryModelImplCopyWith<_$LeaderboardCategoryModelImpl>
      get copyWith => __$$LeaderboardCategoryModelImplCopyWithImpl<
          _$LeaderboardCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardCategoryModel implements LeaderboardCategoryModel {
  const factory _LeaderboardCategoryModel(
      {final String? responseMessage,
      final LeaderboardCategoryData? data}) = _$LeaderboardCategoryModelImpl;

  factory _LeaderboardCategoryModel.fromJson(Map<String, dynamic> json) =
      _$LeaderboardCategoryModelImpl.fromJson;

  @override
  String? get responseMessage;
  @override
  LeaderboardCategoryData? get data;

  /// Create a copy of LeaderboardCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardCategoryModelImplCopyWith<_$LeaderboardCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LeaderboardCategoryData _$LeaderboardCategoryDataFromJson(
    Map<String, dynamic> json) {
  return _LeaderboardCategoryData.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardCategoryData {
  List<Category> get category => throw _privateConstructorUsedError;

  /// Serializes this LeaderboardCategoryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardCategoryDataCopyWith<LeaderboardCategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardCategoryDataCopyWith<$Res> {
  factory $LeaderboardCategoryDataCopyWith(LeaderboardCategoryData value,
          $Res Function(LeaderboardCategoryData) then) =
      _$LeaderboardCategoryDataCopyWithImpl<$Res, LeaderboardCategoryData>;
  @useResult
  $Res call({List<Category> category});
}

/// @nodoc
class _$LeaderboardCategoryDataCopyWithImpl<$Res,
        $Val extends LeaderboardCategoryData>
    implements $LeaderboardCategoryDataCopyWith<$Res> {
  _$LeaderboardCategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardCategoryDataImplCopyWith<$Res>
    implements $LeaderboardCategoryDataCopyWith<$Res> {
  factory _$$LeaderboardCategoryDataImplCopyWith(
          _$LeaderboardCategoryDataImpl value,
          $Res Function(_$LeaderboardCategoryDataImpl) then) =
      __$$LeaderboardCategoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> category});
}

/// @nodoc
class __$$LeaderboardCategoryDataImplCopyWithImpl<$Res>
    extends _$LeaderboardCategoryDataCopyWithImpl<$Res,
        _$LeaderboardCategoryDataImpl>
    implements _$$LeaderboardCategoryDataImplCopyWith<$Res> {
  __$$LeaderboardCategoryDataImplCopyWithImpl(
      _$LeaderboardCategoryDataImpl _value,
      $Res Function(_$LeaderboardCategoryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$LeaderboardCategoryDataImpl(
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardCategoryDataImpl implements _LeaderboardCategoryData {
  const _$LeaderboardCategoryDataImpl({required final List<Category> category})
      : _category = category;

  factory _$LeaderboardCategoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardCategoryDataImplFromJson(json);

  final List<Category> _category;
  @override
  List<Category> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'LeaderboardCategoryData(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardCategoryDataImpl &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_category));

  /// Create a copy of LeaderboardCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardCategoryDataImplCopyWith<_$LeaderboardCategoryDataImpl>
      get copyWith => __$$LeaderboardCategoryDataImplCopyWithImpl<
          _$LeaderboardCategoryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardCategoryDataImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardCategoryData implements LeaderboardCategoryData {
  const factory _LeaderboardCategoryData(
      {required final List<Category> category}) = _$LeaderboardCategoryDataImpl;

  factory _LeaderboardCategoryData.fromJson(Map<String, dynamic> json) =
      _$LeaderboardCategoryDataImpl.fromJson;

  @override
  List<Category> get category;

  /// Create a copy of LeaderboardCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardCategoryDataImplCopyWith<_$LeaderboardCategoryDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl({required this.id, required this.name});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Category(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String id, required final String name}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
