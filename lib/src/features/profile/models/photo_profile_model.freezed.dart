// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoProfileModel _$PhotoProfileModelFromJson(Map<String, dynamic> json) {
  return _PhotoProfileModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoProfileModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'imagePath')
  String get imagePath => throw _privateConstructorUsedError;

  /// Serializes this PhotoProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoProfileModelCopyWith<PhotoProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoProfileModelCopyWith<$Res> {
  factory $PhotoProfileModelCopyWith(
          PhotoProfileModel value, $Res Function(PhotoProfileModel) then) =
      _$PhotoProfileModelCopyWithImpl<$Res, PhotoProfileModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'imagePath') String imagePath});
}

/// @nodoc
class _$PhotoProfileModelCopyWithImpl<$Res, $Val extends PhotoProfileModel>
    implements $PhotoProfileModelCopyWith<$Res> {
  _$PhotoProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoProfileModelImplCopyWith<$Res>
    implements $PhotoProfileModelCopyWith<$Res> {
  factory _$$PhotoProfileModelImplCopyWith(_$PhotoProfileModelImpl value,
          $Res Function(_$PhotoProfileModelImpl) then) =
      __$$PhotoProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'imagePath') String imagePath});
}

/// @nodoc
class __$$PhotoProfileModelImplCopyWithImpl<$Res>
    extends _$PhotoProfileModelCopyWithImpl<$Res, _$PhotoProfileModelImpl>
    implements _$$PhotoProfileModelImplCopyWith<$Res> {
  __$$PhotoProfileModelImplCopyWithImpl(_$PhotoProfileModelImpl _value,
      $Res Function(_$PhotoProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imagePath = null,
  }) {
    return _then(_$PhotoProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoProfileModelImpl implements _PhotoProfileModel {
  const _$PhotoProfileModelImpl(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'imagePath') required this.imagePath});

  factory _$PhotoProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoProfileModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'imagePath')
  final String imagePath;

  @override
  String toString() {
    return 'PhotoProfileModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, updatedAt, imagePath);

  /// Create a copy of PhotoProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoProfileModelImplCopyWith<_$PhotoProfileModelImpl> get copyWith =>
      __$$PhotoProfileModelImplCopyWithImpl<_$PhotoProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoProfileModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoProfileModel implements PhotoProfileModel {
  const factory _PhotoProfileModel(
          {required final String id,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt,
          @JsonKey(name: 'imagePath') required final String imagePath}) =
      _$PhotoProfileModelImpl;

  factory _PhotoProfileModel.fromJson(Map<String, dynamic> json) =
      _$PhotoProfileModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'imagePath')
  String get imagePath;

  /// Create a copy of PhotoProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoProfileModelImplCopyWith<_$PhotoProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
