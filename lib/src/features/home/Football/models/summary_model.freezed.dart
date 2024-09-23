// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SummaryModel _$SummaryModelFromJson(Map<String, dynamic> json) {
  return _SummaryModel.fromJson(json);
}

/// @nodoc
mixin _$SummaryModel {
  String get time => throw _privateConstructorUsedError;
  String? get home => throw _privateConstructorUsedError;
  String? get homeIcon => throw _privateConstructorUsedError;
  String? get score => throw _privateConstructorUsedError;
  String? get awayIcon => throw _privateConstructorUsedError;
  String? get away => throw _privateConstructorUsedError;

  /// Serializes this SummaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SummaryModelCopyWith<SummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryModelCopyWith<$Res> {
  factory $SummaryModelCopyWith(
          SummaryModel value, $Res Function(SummaryModel) then) =
      _$SummaryModelCopyWithImpl<$Res, SummaryModel>;
  @useResult
  $Res call(
      {String time,
      String? home,
      String? homeIcon,
      String? score,
      String? awayIcon,
      String? away});
}

/// @nodoc
class _$SummaryModelCopyWithImpl<$Res, $Val extends SummaryModel>
    implements $SummaryModelCopyWith<$Res> {
  _$SummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? home = freezed,
    Object? homeIcon = freezed,
    Object? score = freezed,
    Object? awayIcon = freezed,
    Object? away = freezed,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as String?,
      homeIcon: freezed == homeIcon
          ? _value.homeIcon
          : homeIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      awayIcon: freezed == awayIcon
          ? _value.awayIcon
          : awayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SummaryModelImplCopyWith<$Res>
    implements $SummaryModelCopyWith<$Res> {
  factory _$$SummaryModelImplCopyWith(
          _$SummaryModelImpl value, $Res Function(_$SummaryModelImpl) then) =
      __$$SummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      String? home,
      String? homeIcon,
      String? score,
      String? awayIcon,
      String? away});
}

/// @nodoc
class __$$SummaryModelImplCopyWithImpl<$Res>
    extends _$SummaryModelCopyWithImpl<$Res, _$SummaryModelImpl>
    implements _$$SummaryModelImplCopyWith<$Res> {
  __$$SummaryModelImplCopyWithImpl(
      _$SummaryModelImpl _value, $Res Function(_$SummaryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? home = freezed,
    Object? homeIcon = freezed,
    Object? score = freezed,
    Object? awayIcon = freezed,
    Object? away = freezed,
  }) {
    return _then(_$SummaryModelImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as String?,
      homeIcon: freezed == homeIcon
          ? _value.homeIcon
          : homeIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      awayIcon: freezed == awayIcon
          ? _value.awayIcon
          : awayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SummaryModelImpl implements _SummaryModel {
  const _$SummaryModelImpl(
      {required this.time,
      this.home,
      this.homeIcon,
      this.score,
      this.awayIcon,
      this.away});

  factory _$SummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SummaryModelImplFromJson(json);

  @override
  final String time;
  @override
  final String? home;
  @override
  final String? homeIcon;
  @override
  final String? score;
  @override
  final String? awayIcon;
  @override
  final String? away;

  @override
  String toString() {
    return 'SummaryModel(time: $time, home: $home, homeIcon: $homeIcon, score: $score, awayIcon: $awayIcon, away: $away)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryModelImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.homeIcon, homeIcon) ||
                other.homeIcon == homeIcon) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.awayIcon, awayIcon) ||
                other.awayIcon == awayIcon) &&
            (identical(other.away, away) || other.away == away));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, home, homeIcon, score, awayIcon, away);

  /// Create a copy of SummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryModelImplCopyWith<_$SummaryModelImpl> get copyWith =>
      __$$SummaryModelImplCopyWithImpl<_$SummaryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SummaryModelImplToJson(
      this,
    );
  }
}

abstract class _SummaryModel implements SummaryModel {
  const factory _SummaryModel(
      {required final String time,
      final String? home,
      final String? homeIcon,
      final String? score,
      final String? awayIcon,
      final String? away}) = _$SummaryModelImpl;

  factory _SummaryModel.fromJson(Map<String, dynamic> json) =
      _$SummaryModelImpl.fromJson;

  @override
  String get time;
  @override
  String? get home;
  @override
  String? get homeIcon;
  @override
  String? get score;
  @override
  String? get awayIcon;
  @override
  String? get away;

  /// Create a copy of SummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SummaryModelImplCopyWith<_$SummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
