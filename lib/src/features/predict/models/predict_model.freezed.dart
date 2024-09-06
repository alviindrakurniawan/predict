// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'predict_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PredictModel _$PredictModelFromJson(Map<String, dynamic> json) {
  return _PredictModel.fromJson(json);
}

/// @nodoc
mixin _$PredictModel {
  String get predictionId => throw _privateConstructorUsedError;
  String get sport => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get matchId => throw _privateConstructorUsedError;
  int get matchStatus => throw _privateConstructorUsedError;
  int get prediction => throw _privateConstructorUsedError;
  String get localTeamId => throw _privateConstructorUsedError;
  String get visitorTeamId => throw _privateConstructorUsedError;
  String? get partnerDataJson => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PredictModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PredictModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PredictModelCopyWith<PredictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictModelCopyWith<$Res> {
  factory $PredictModelCopyWith(
          PredictModel value, $Res Function(PredictModel) then) =
      _$PredictModelCopyWithImpl<$Res, PredictModel>;
  @useResult
  $Res call(
      {String predictionId,
      String sport,
      String categoryId,
      String matchId,
      int matchStatus,
      int prediction,
      String localTeamId,
      String visitorTeamId,
      String? partnerDataJson,
      DateTime createdAt});
}

/// @nodoc
class _$PredictModelCopyWithImpl<$Res, $Val extends PredictModel>
    implements $PredictModelCopyWith<$Res> {
  _$PredictModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PredictModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictionId = null,
    Object? sport = null,
    Object? categoryId = null,
    Object? matchId = null,
    Object? matchStatus = null,
    Object? prediction = null,
    Object? localTeamId = null,
    Object? visitorTeamId = null,
    Object? partnerDataJson = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      predictionId: null == predictionId
          ? _value.predictionId
          : predictionId // ignore: cast_nullable_to_non_nullable
              as String,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      matchStatus: null == matchStatus
          ? _value.matchStatus
          : matchStatus // ignore: cast_nullable_to_non_nullable
              as int,
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as int,
      localTeamId: null == localTeamId
          ? _value.localTeamId
          : localTeamId // ignore: cast_nullable_to_non_nullable
              as String,
      visitorTeamId: null == visitorTeamId
          ? _value.visitorTeamId
          : visitorTeamId // ignore: cast_nullable_to_non_nullable
              as String,
      partnerDataJson: freezed == partnerDataJson
          ? _value.partnerDataJson
          : partnerDataJson // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PredictModelImplCopyWith<$Res>
    implements $PredictModelCopyWith<$Res> {
  factory _$$PredictModelImplCopyWith(
          _$PredictModelImpl value, $Res Function(_$PredictModelImpl) then) =
      __$$PredictModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String predictionId,
      String sport,
      String categoryId,
      String matchId,
      int matchStatus,
      int prediction,
      String localTeamId,
      String visitorTeamId,
      String? partnerDataJson,
      DateTime createdAt});
}

/// @nodoc
class __$$PredictModelImplCopyWithImpl<$Res>
    extends _$PredictModelCopyWithImpl<$Res, _$PredictModelImpl>
    implements _$$PredictModelImplCopyWith<$Res> {
  __$$PredictModelImplCopyWithImpl(
      _$PredictModelImpl _value, $Res Function(_$PredictModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PredictModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictionId = null,
    Object? sport = null,
    Object? categoryId = null,
    Object? matchId = null,
    Object? matchStatus = null,
    Object? prediction = null,
    Object? localTeamId = null,
    Object? visitorTeamId = null,
    Object? partnerDataJson = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$PredictModelImpl(
      predictionId: null == predictionId
          ? _value.predictionId
          : predictionId // ignore: cast_nullable_to_non_nullable
              as String,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      matchStatus: null == matchStatus
          ? _value.matchStatus
          : matchStatus // ignore: cast_nullable_to_non_nullable
              as int,
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as int,
      localTeamId: null == localTeamId
          ? _value.localTeamId
          : localTeamId // ignore: cast_nullable_to_non_nullable
              as String,
      visitorTeamId: null == visitorTeamId
          ? _value.visitorTeamId
          : visitorTeamId // ignore: cast_nullable_to_non_nullable
              as String,
      partnerDataJson: freezed == partnerDataJson
          ? _value.partnerDataJson
          : partnerDataJson // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PredictModelImpl implements _PredictModel {
  const _$PredictModelImpl(
      {required this.predictionId,
      required this.sport,
      required this.categoryId,
      required this.matchId,
      required this.matchStatus,
      required this.prediction,
      required this.localTeamId,
      required this.visitorTeamId,
      this.partnerDataJson,
      required this.createdAt});

  factory _$PredictModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PredictModelImplFromJson(json);

  @override
  final String predictionId;
  @override
  final String sport;
  @override
  final String categoryId;
  @override
  final String matchId;
  @override
  final int matchStatus;
  @override
  final int prediction;
  @override
  final String localTeamId;
  @override
  final String visitorTeamId;
  @override
  final String? partnerDataJson;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PredictModel(predictionId: $predictionId, sport: $sport, categoryId: $categoryId, matchId: $matchId, matchStatus: $matchStatus, prediction: $prediction, localTeamId: $localTeamId, visitorTeamId: $visitorTeamId, partnerDataJson: $partnerDataJson, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictModelImpl &&
            (identical(other.predictionId, predictionId) ||
                other.predictionId == predictionId) &&
            (identical(other.sport, sport) || other.sport == sport) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.matchStatus, matchStatus) ||
                other.matchStatus == matchStatus) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction) &&
            (identical(other.localTeamId, localTeamId) ||
                other.localTeamId == localTeamId) &&
            (identical(other.visitorTeamId, visitorTeamId) ||
                other.visitorTeamId == visitorTeamId) &&
            (identical(other.partnerDataJson, partnerDataJson) ||
                other.partnerDataJson == partnerDataJson) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      predictionId,
      sport,
      categoryId,
      matchId,
      matchStatus,
      prediction,
      localTeamId,
      visitorTeamId,
      partnerDataJson,
      createdAt);

  /// Create a copy of PredictModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictModelImplCopyWith<_$PredictModelImpl> get copyWith =>
      __$$PredictModelImplCopyWithImpl<_$PredictModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PredictModelImplToJson(
      this,
    );
  }
}

abstract class _PredictModel implements PredictModel {
  const factory _PredictModel(
      {required final String predictionId,
      required final String sport,
      required final String categoryId,
      required final String matchId,
      required final int matchStatus,
      required final int prediction,
      required final String localTeamId,
      required final String visitorTeamId,
      final String? partnerDataJson,
      required final DateTime createdAt}) = _$PredictModelImpl;

  factory _PredictModel.fromJson(Map<String, dynamic> json) =
      _$PredictModelImpl.fromJson;

  @override
  String get predictionId;
  @override
  String get sport;
  @override
  String get categoryId;
  @override
  String get matchId;
  @override
  int get matchStatus;
  @override
  int get prediction;
  @override
  String get localTeamId;
  @override
  String get visitorTeamId;
  @override
  String? get partnerDataJson;
  @override
  DateTime get createdAt;

  /// Create a copy of PredictModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PredictModelImplCopyWith<_$PredictModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
