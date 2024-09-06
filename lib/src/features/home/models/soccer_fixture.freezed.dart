// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'soccer_fixture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SoccerFixtureResponse _$SoccerFixtureResponseFromJson(
    Map<String, dynamic> json) {
  return _SoccerFixtureResponse.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixtureResponse {
  int? get success => throw _privateConstructorUsedError;
  List<SoccerFixtureResult>? get result => throw _privateConstructorUsedError;

  /// Serializes this SoccerFixtureResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixtureResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixtureResponseCopyWith<SoccerFixtureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixtureResponseCopyWith<$Res> {
  factory $SoccerFixtureResponseCopyWith(SoccerFixtureResponse value,
          $Res Function(SoccerFixtureResponse) then) =
      _$SoccerFixtureResponseCopyWithImpl<$Res, SoccerFixtureResponse>;
  @useResult
  $Res call({int? success, List<SoccerFixtureResult>? result});
}

/// @nodoc
class _$SoccerFixtureResponseCopyWithImpl<$Res,
        $Val extends SoccerFixtureResponse>
    implements $SoccerFixtureResponseCopyWith<$Res> {
  _$SoccerFixtureResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixtureResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerFixtureResponseImplCopyWith<$Res>
    implements $SoccerFixtureResponseCopyWith<$Res> {
  factory _$$SoccerFixtureResponseImplCopyWith(
          _$SoccerFixtureResponseImpl value,
          $Res Function(_$SoccerFixtureResponseImpl) then) =
      __$$SoccerFixtureResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? success, List<SoccerFixtureResult>? result});
}

/// @nodoc
class __$$SoccerFixtureResponseImplCopyWithImpl<$Res>
    extends _$SoccerFixtureResponseCopyWithImpl<$Res,
        _$SoccerFixtureResponseImpl>
    implements _$$SoccerFixtureResponseImplCopyWith<$Res> {
  __$$SoccerFixtureResponseImplCopyWithImpl(_$SoccerFixtureResponseImpl _value,
      $Res Function(_$SoccerFixtureResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixtureResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SoccerFixtureResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerFixtureResponseImpl implements _SoccerFixtureResponse {
  const _$SoccerFixtureResponseImpl(
      {this.success, final List<SoccerFixtureResult>? result})
      : _result = result;

  factory _$SoccerFixtureResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixtureResponseImplFromJson(json);

  @override
  final int? success;
  final List<SoccerFixtureResult>? _result;
  @override
  List<SoccerFixtureResult>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SoccerFixtureResponse(success: $success, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixtureResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_result));

  /// Create a copy of SoccerFixtureResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixtureResponseImplCopyWith<_$SoccerFixtureResponseImpl>
      get copyWith => __$$SoccerFixtureResponseImplCopyWithImpl<
          _$SoccerFixtureResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixtureResponseImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixtureResponse implements SoccerFixtureResponse {
  const factory _SoccerFixtureResponse(
      {final int? success,
      final List<SoccerFixtureResult>? result}) = _$SoccerFixtureResponseImpl;

  factory _SoccerFixtureResponse.fromJson(Map<String, dynamic> json) =
      _$SoccerFixtureResponseImpl.fromJson;

  @override
  int? get success;
  @override
  List<SoccerFixtureResult>? get result;

  /// Create a copy of SoccerFixtureResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixtureResponseImplCopyWith<_$SoccerFixtureResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SoccerFixtureResult _$SoccerFixtureResultFromJson(Map<String, dynamic> json) {
  return _SoccerFixtureResult.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixtureResult {
  int? get event_key =>
      throw _privateConstructorUsedError; // Changed from String? to int?
  String? get event_date => throw _privateConstructorUsedError;
  String? get event_time => throw _privateConstructorUsedError;
  String? get event_home_team => throw _privateConstructorUsedError;
  int? get home_team_key =>
      throw _privateConstructorUsedError; // Changed from String? to int?
  String? get event_away_team => throw _privateConstructorUsedError;
  int? get away_team_key =>
      throw _privateConstructorUsedError; // Changed from String? to int?
  String? get event_halftime_result => throw _privateConstructorUsedError;
  String? get event_final_result => throw _privateConstructorUsedError;
  String? get event_ft_result => throw _privateConstructorUsedError;
  String? get event_penalty_result => throw _privateConstructorUsedError;
  String? get event_status => throw _privateConstructorUsedError;
  String? get country_name => throw _privateConstructorUsedError;
  String? get league_name => throw _privateConstructorUsedError;
  int? get league_key =>
      throw _privateConstructorUsedError; // Changed from String? to int?
  String? get league_round => throw _privateConstructorUsedError;
  String? get league_season => throw _privateConstructorUsedError;
  String? get event_live => throw _privateConstructorUsedError;
  String? get event_stadium => throw _privateConstructorUsedError;
  String? get event_referee => throw _privateConstructorUsedError;
  String? get home_team_logo => throw _privateConstructorUsedError;
  String? get away_team_logo => throw _privateConstructorUsedError;
  int? get event_country_key =>
      throw _privateConstructorUsedError; // Changed from String? to int?
  String? get league_logo => throw _privateConstructorUsedError;
  String? get country_logo => throw _privateConstructorUsedError;
  String? get event_home_formation => throw _privateConstructorUsedError;
  String? get event_away_formation => throw _privateConstructorUsedError;
  int? get fk_stage_key => throw _privateConstructorUsedError;
  String? get stage_name => throw _privateConstructorUsedError;
  String? get league_group => throw _privateConstructorUsedError;
  String? get prediction => throw _privateConstructorUsedError;
  List<SoccerFixtureGoalscorer>? get goalscorers =>
      throw _privateConstructorUsedError;
  List<SoccerFixtureSubstitute>? get substitutes =>
      throw _privateConstructorUsedError;
  List<SoccerFixtureCard>? get cards => throw _privateConstructorUsedError;
  SoccerFixtureLineups? get lineups => throw _privateConstructorUsedError;
  List<SoccerFixtureStatistic>? get statistics =>
      throw _privateConstructorUsedError;

  /// Serializes this SoccerFixtureResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixtureResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixtureResultCopyWith<SoccerFixtureResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixtureResultCopyWith<$Res> {
  factory $SoccerFixtureResultCopyWith(
          SoccerFixtureResult value, $Res Function(SoccerFixtureResult) then) =
      _$SoccerFixtureResultCopyWithImpl<$Res, SoccerFixtureResult>;
  @useResult
  $Res call(
      {int? event_key,
      String? event_date,
      String? event_time,
      String? event_home_team,
      int? home_team_key,
      String? event_away_team,
      int? away_team_key,
      String? event_halftime_result,
      String? event_final_result,
      String? event_ft_result,
      String? event_penalty_result,
      String? event_status,
      String? country_name,
      String? league_name,
      int? league_key,
      String? league_round,
      String? league_season,
      String? event_live,
      String? event_stadium,
      String? event_referee,
      String? home_team_logo,
      String? away_team_logo,
      int? event_country_key,
      String? league_logo,
      String? country_logo,
      String? event_home_formation,
      String? event_away_formation,
      int? fk_stage_key,
      String? stage_name,
      String? league_group,
      String? prediction,
      List<SoccerFixtureGoalscorer>? goalscorers,
      List<SoccerFixtureSubstitute>? substitutes,
      List<SoccerFixtureCard>? cards,
      SoccerFixtureLineups? lineups,
      List<SoccerFixtureStatistic>? statistics});

  $SoccerFixtureLineupsCopyWith<$Res>? get lineups;
}

/// @nodoc
class _$SoccerFixtureResultCopyWithImpl<$Res, $Val extends SoccerFixtureResult>
    implements $SoccerFixtureResultCopyWith<$Res> {
  _$SoccerFixtureResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixtureResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event_key = freezed,
    Object? event_date = freezed,
    Object? event_time = freezed,
    Object? event_home_team = freezed,
    Object? home_team_key = freezed,
    Object? event_away_team = freezed,
    Object? away_team_key = freezed,
    Object? event_halftime_result = freezed,
    Object? event_final_result = freezed,
    Object? event_ft_result = freezed,
    Object? event_penalty_result = freezed,
    Object? event_status = freezed,
    Object? country_name = freezed,
    Object? league_name = freezed,
    Object? league_key = freezed,
    Object? league_round = freezed,
    Object? league_season = freezed,
    Object? event_live = freezed,
    Object? event_stadium = freezed,
    Object? event_referee = freezed,
    Object? home_team_logo = freezed,
    Object? away_team_logo = freezed,
    Object? event_country_key = freezed,
    Object? league_logo = freezed,
    Object? country_logo = freezed,
    Object? event_home_formation = freezed,
    Object? event_away_formation = freezed,
    Object? fk_stage_key = freezed,
    Object? stage_name = freezed,
    Object? league_group = freezed,
    Object? prediction = freezed,
    Object? goalscorers = freezed,
    Object? substitutes = freezed,
    Object? cards = freezed,
    Object? lineups = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_value.copyWith(
      event_key: freezed == event_key
          ? _value.event_key
          : event_key // ignore: cast_nullable_to_non_nullable
              as int?,
      event_date: freezed == event_date
          ? _value.event_date
          : event_date // ignore: cast_nullable_to_non_nullable
              as String?,
      event_time: freezed == event_time
          ? _value.event_time
          : event_time // ignore: cast_nullable_to_non_nullable
              as String?,
      event_home_team: freezed == event_home_team
          ? _value.event_home_team
          : event_home_team // ignore: cast_nullable_to_non_nullable
              as String?,
      home_team_key: freezed == home_team_key
          ? _value.home_team_key
          : home_team_key // ignore: cast_nullable_to_non_nullable
              as int?,
      event_away_team: freezed == event_away_team
          ? _value.event_away_team
          : event_away_team // ignore: cast_nullable_to_non_nullable
              as String?,
      away_team_key: freezed == away_team_key
          ? _value.away_team_key
          : away_team_key // ignore: cast_nullable_to_non_nullable
              as int?,
      event_halftime_result: freezed == event_halftime_result
          ? _value.event_halftime_result
          : event_halftime_result // ignore: cast_nullable_to_non_nullable
              as String?,
      event_final_result: freezed == event_final_result
          ? _value.event_final_result
          : event_final_result // ignore: cast_nullable_to_non_nullable
              as String?,
      event_ft_result: freezed == event_ft_result
          ? _value.event_ft_result
          : event_ft_result // ignore: cast_nullable_to_non_nullable
              as String?,
      event_penalty_result: freezed == event_penalty_result
          ? _value.event_penalty_result
          : event_penalty_result // ignore: cast_nullable_to_non_nullable
              as String?,
      event_status: freezed == event_status
          ? _value.event_status
          : event_status // ignore: cast_nullable_to_non_nullable
              as String?,
      country_name: freezed == country_name
          ? _value.country_name
          : country_name // ignore: cast_nullable_to_non_nullable
              as String?,
      league_name: freezed == league_name
          ? _value.league_name
          : league_name // ignore: cast_nullable_to_non_nullable
              as String?,
      league_key: freezed == league_key
          ? _value.league_key
          : league_key // ignore: cast_nullable_to_non_nullable
              as int?,
      league_round: freezed == league_round
          ? _value.league_round
          : league_round // ignore: cast_nullable_to_non_nullable
              as String?,
      league_season: freezed == league_season
          ? _value.league_season
          : league_season // ignore: cast_nullable_to_non_nullable
              as String?,
      event_live: freezed == event_live
          ? _value.event_live
          : event_live // ignore: cast_nullable_to_non_nullable
              as String?,
      event_stadium: freezed == event_stadium
          ? _value.event_stadium
          : event_stadium // ignore: cast_nullable_to_non_nullable
              as String?,
      event_referee: freezed == event_referee
          ? _value.event_referee
          : event_referee // ignore: cast_nullable_to_non_nullable
              as String?,
      home_team_logo: freezed == home_team_logo
          ? _value.home_team_logo
          : home_team_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      away_team_logo: freezed == away_team_logo
          ? _value.away_team_logo
          : away_team_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      event_country_key: freezed == event_country_key
          ? _value.event_country_key
          : event_country_key // ignore: cast_nullable_to_non_nullable
              as int?,
      league_logo: freezed == league_logo
          ? _value.league_logo
          : league_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      country_logo: freezed == country_logo
          ? _value.country_logo
          : country_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      event_home_formation: freezed == event_home_formation
          ? _value.event_home_formation
          : event_home_formation // ignore: cast_nullable_to_non_nullable
              as String?,
      event_away_formation: freezed == event_away_formation
          ? _value.event_away_formation
          : event_away_formation // ignore: cast_nullable_to_non_nullable
              as String?,
      fk_stage_key: freezed == fk_stage_key
          ? _value.fk_stage_key
          : fk_stage_key // ignore: cast_nullable_to_non_nullable
              as int?,
      stage_name: freezed == stage_name
          ? _value.stage_name
          : stage_name // ignore: cast_nullable_to_non_nullable
              as String?,
      league_group: freezed == league_group
          ? _value.league_group
          : league_group // ignore: cast_nullable_to_non_nullable
              as String?,
      prediction: freezed == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String?,
      goalscorers: freezed == goalscorers
          ? _value.goalscorers
          : goalscorers // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureGoalscorer>?,
      substitutes: freezed == substitutes
          ? _value.substitutes
          : substitutes // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureSubstitute>?,
      cards: freezed == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureCard>?,
      lineups: freezed == lineups
          ? _value.lineups
          : lineups // ignore: cast_nullable_to_non_nullable
              as SoccerFixtureLineups?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureStatistic>?,
    ) as $Val);
  }

  /// Create a copy of SoccerFixtureResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoccerFixtureLineupsCopyWith<$Res>? get lineups {
    if (_value.lineups == null) {
      return null;
    }

    return $SoccerFixtureLineupsCopyWith<$Res>(_value.lineups!, (value) {
      return _then(_value.copyWith(lineups: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SoccerFixtureResultImplCopyWith<$Res>
    implements $SoccerFixtureResultCopyWith<$Res> {
  factory _$$SoccerFixtureResultImplCopyWith(_$SoccerFixtureResultImpl value,
          $Res Function(_$SoccerFixtureResultImpl) then) =
      __$$SoccerFixtureResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? event_key,
      String? event_date,
      String? event_time,
      String? event_home_team,
      int? home_team_key,
      String? event_away_team,
      int? away_team_key,
      String? event_halftime_result,
      String? event_final_result,
      String? event_ft_result,
      String? event_penalty_result,
      String? event_status,
      String? country_name,
      String? league_name,
      int? league_key,
      String? league_round,
      String? league_season,
      String? event_live,
      String? event_stadium,
      String? event_referee,
      String? home_team_logo,
      String? away_team_logo,
      int? event_country_key,
      String? league_logo,
      String? country_logo,
      String? event_home_formation,
      String? event_away_formation,
      int? fk_stage_key,
      String? stage_name,
      String? league_group,
      String? prediction,
      List<SoccerFixtureGoalscorer>? goalscorers,
      List<SoccerFixtureSubstitute>? substitutes,
      List<SoccerFixtureCard>? cards,
      SoccerFixtureLineups? lineups,
      List<SoccerFixtureStatistic>? statistics});

  @override
  $SoccerFixtureLineupsCopyWith<$Res>? get lineups;
}

/// @nodoc
class __$$SoccerFixtureResultImplCopyWithImpl<$Res>
    extends _$SoccerFixtureResultCopyWithImpl<$Res, _$SoccerFixtureResultImpl>
    implements _$$SoccerFixtureResultImplCopyWith<$Res> {
  __$$SoccerFixtureResultImplCopyWithImpl(_$SoccerFixtureResultImpl _value,
      $Res Function(_$SoccerFixtureResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixtureResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event_key = freezed,
    Object? event_date = freezed,
    Object? event_time = freezed,
    Object? event_home_team = freezed,
    Object? home_team_key = freezed,
    Object? event_away_team = freezed,
    Object? away_team_key = freezed,
    Object? event_halftime_result = freezed,
    Object? event_final_result = freezed,
    Object? event_ft_result = freezed,
    Object? event_penalty_result = freezed,
    Object? event_status = freezed,
    Object? country_name = freezed,
    Object? league_name = freezed,
    Object? league_key = freezed,
    Object? league_round = freezed,
    Object? league_season = freezed,
    Object? event_live = freezed,
    Object? event_stadium = freezed,
    Object? event_referee = freezed,
    Object? home_team_logo = freezed,
    Object? away_team_logo = freezed,
    Object? event_country_key = freezed,
    Object? league_logo = freezed,
    Object? country_logo = freezed,
    Object? event_home_formation = freezed,
    Object? event_away_formation = freezed,
    Object? fk_stage_key = freezed,
    Object? stage_name = freezed,
    Object? league_group = freezed,
    Object? prediction = freezed,
    Object? goalscorers = freezed,
    Object? substitutes = freezed,
    Object? cards = freezed,
    Object? lineups = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_$SoccerFixtureResultImpl(
      event_key: freezed == event_key
          ? _value.event_key
          : event_key // ignore: cast_nullable_to_non_nullable
              as int?,
      event_date: freezed == event_date
          ? _value.event_date
          : event_date // ignore: cast_nullable_to_non_nullable
              as String?,
      event_time: freezed == event_time
          ? _value.event_time
          : event_time // ignore: cast_nullable_to_non_nullable
              as String?,
      event_home_team: freezed == event_home_team
          ? _value.event_home_team
          : event_home_team // ignore: cast_nullable_to_non_nullable
              as String?,
      home_team_key: freezed == home_team_key
          ? _value.home_team_key
          : home_team_key // ignore: cast_nullable_to_non_nullable
              as int?,
      event_away_team: freezed == event_away_team
          ? _value.event_away_team
          : event_away_team // ignore: cast_nullable_to_non_nullable
              as String?,
      away_team_key: freezed == away_team_key
          ? _value.away_team_key
          : away_team_key // ignore: cast_nullable_to_non_nullable
              as int?,
      event_halftime_result: freezed == event_halftime_result
          ? _value.event_halftime_result
          : event_halftime_result // ignore: cast_nullable_to_non_nullable
              as String?,
      event_final_result: freezed == event_final_result
          ? _value.event_final_result
          : event_final_result // ignore: cast_nullable_to_non_nullable
              as String?,
      event_ft_result: freezed == event_ft_result
          ? _value.event_ft_result
          : event_ft_result // ignore: cast_nullable_to_non_nullable
              as String?,
      event_penalty_result: freezed == event_penalty_result
          ? _value.event_penalty_result
          : event_penalty_result // ignore: cast_nullable_to_non_nullable
              as String?,
      event_status: freezed == event_status
          ? _value.event_status
          : event_status // ignore: cast_nullable_to_non_nullable
              as String?,
      country_name: freezed == country_name
          ? _value.country_name
          : country_name // ignore: cast_nullable_to_non_nullable
              as String?,
      league_name: freezed == league_name
          ? _value.league_name
          : league_name // ignore: cast_nullable_to_non_nullable
              as String?,
      league_key: freezed == league_key
          ? _value.league_key
          : league_key // ignore: cast_nullable_to_non_nullable
              as int?,
      league_round: freezed == league_round
          ? _value.league_round
          : league_round // ignore: cast_nullable_to_non_nullable
              as String?,
      league_season: freezed == league_season
          ? _value.league_season
          : league_season // ignore: cast_nullable_to_non_nullable
              as String?,
      event_live: freezed == event_live
          ? _value.event_live
          : event_live // ignore: cast_nullable_to_non_nullable
              as String?,
      event_stadium: freezed == event_stadium
          ? _value.event_stadium
          : event_stadium // ignore: cast_nullable_to_non_nullable
              as String?,
      event_referee: freezed == event_referee
          ? _value.event_referee
          : event_referee // ignore: cast_nullable_to_non_nullable
              as String?,
      home_team_logo: freezed == home_team_logo
          ? _value.home_team_logo
          : home_team_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      away_team_logo: freezed == away_team_logo
          ? _value.away_team_logo
          : away_team_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      event_country_key: freezed == event_country_key
          ? _value.event_country_key
          : event_country_key // ignore: cast_nullable_to_non_nullable
              as int?,
      league_logo: freezed == league_logo
          ? _value.league_logo
          : league_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      country_logo: freezed == country_logo
          ? _value.country_logo
          : country_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      event_home_formation: freezed == event_home_formation
          ? _value.event_home_formation
          : event_home_formation // ignore: cast_nullable_to_non_nullable
              as String?,
      event_away_formation: freezed == event_away_formation
          ? _value.event_away_formation
          : event_away_formation // ignore: cast_nullable_to_non_nullable
              as String?,
      fk_stage_key: freezed == fk_stage_key
          ? _value.fk_stage_key
          : fk_stage_key // ignore: cast_nullable_to_non_nullable
              as int?,
      stage_name: freezed == stage_name
          ? _value.stage_name
          : stage_name // ignore: cast_nullable_to_non_nullable
              as String?,
      league_group: freezed == league_group
          ? _value.league_group
          : league_group // ignore: cast_nullable_to_non_nullable
              as String?,
      prediction: freezed == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String?,
      goalscorers: freezed == goalscorers
          ? _value._goalscorers
          : goalscorers // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureGoalscorer>?,
      substitutes: freezed == substitutes
          ? _value._substitutes
          : substitutes // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureSubstitute>?,
      cards: freezed == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureCard>?,
      lineups: freezed == lineups
          ? _value.lineups
          : lineups // ignore: cast_nullable_to_non_nullable
              as SoccerFixtureLineups?,
      statistics: freezed == statistics
          ? _value._statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureStatistic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerFixtureResultImpl implements _SoccerFixtureResult {
  const _$SoccerFixtureResultImpl(
      {this.event_key,
      this.event_date,
      this.event_time,
      this.event_home_team,
      this.home_team_key,
      this.event_away_team,
      this.away_team_key,
      this.event_halftime_result,
      this.event_final_result,
      this.event_ft_result,
      this.event_penalty_result,
      this.event_status,
      this.country_name,
      this.league_name,
      this.league_key,
      this.league_round,
      this.league_season,
      this.event_live,
      this.event_stadium,
      this.event_referee,
      this.home_team_logo,
      this.away_team_logo,
      this.event_country_key,
      this.league_logo,
      this.country_logo,
      this.event_home_formation,
      this.event_away_formation,
      this.fk_stage_key,
      this.stage_name,
      this.league_group,
      this.prediction,
      final List<SoccerFixtureGoalscorer>? goalscorers,
      final List<SoccerFixtureSubstitute>? substitutes,
      final List<SoccerFixtureCard>? cards,
      this.lineups,
      final List<SoccerFixtureStatistic>? statistics})
      : _goalscorers = goalscorers,
        _substitutes = substitutes,
        _cards = cards,
        _statistics = statistics;

  factory _$SoccerFixtureResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixtureResultImplFromJson(json);

  @override
  final int? event_key;
// Changed from String? to int?
  @override
  final String? event_date;
  @override
  final String? event_time;
  @override
  final String? event_home_team;
  @override
  final int? home_team_key;
// Changed from String? to int?
  @override
  final String? event_away_team;
  @override
  final int? away_team_key;
// Changed from String? to int?
  @override
  final String? event_halftime_result;
  @override
  final String? event_final_result;
  @override
  final String? event_ft_result;
  @override
  final String? event_penalty_result;
  @override
  final String? event_status;
  @override
  final String? country_name;
  @override
  final String? league_name;
  @override
  final int? league_key;
// Changed from String? to int?
  @override
  final String? league_round;
  @override
  final String? league_season;
  @override
  final String? event_live;
  @override
  final String? event_stadium;
  @override
  final String? event_referee;
  @override
  final String? home_team_logo;
  @override
  final String? away_team_logo;
  @override
  final int? event_country_key;
// Changed from String? to int?
  @override
  final String? league_logo;
  @override
  final String? country_logo;
  @override
  final String? event_home_formation;
  @override
  final String? event_away_formation;
  @override
  final int? fk_stage_key;
  @override
  final String? stage_name;
  @override
  final String? league_group;
  @override
  final String? prediction;
  final List<SoccerFixtureGoalscorer>? _goalscorers;
  @override
  List<SoccerFixtureGoalscorer>? get goalscorers {
    final value = _goalscorers;
    if (value == null) return null;
    if (_goalscorers is EqualUnmodifiableListView) return _goalscorers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SoccerFixtureSubstitute>? _substitutes;
  @override
  List<SoccerFixtureSubstitute>? get substitutes {
    final value = _substitutes;
    if (value == null) return null;
    if (_substitutes is EqualUnmodifiableListView) return _substitutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SoccerFixtureCard>? _cards;
  @override
  List<SoccerFixtureCard>? get cards {
    final value = _cards;
    if (value == null) return null;
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SoccerFixtureLineups? lineups;
  final List<SoccerFixtureStatistic>? _statistics;
  @override
  List<SoccerFixtureStatistic>? get statistics {
    final value = _statistics;
    if (value == null) return null;
    if (_statistics is EqualUnmodifiableListView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SoccerFixtureResult(event_key: $event_key, event_date: $event_date, event_time: $event_time, event_home_team: $event_home_team, home_team_key: $home_team_key, event_away_team: $event_away_team, away_team_key: $away_team_key, event_halftime_result: $event_halftime_result, event_final_result: $event_final_result, event_ft_result: $event_ft_result, event_penalty_result: $event_penalty_result, event_status: $event_status, country_name: $country_name, league_name: $league_name, league_key: $league_key, league_round: $league_round, league_season: $league_season, event_live: $event_live, event_stadium: $event_stadium, event_referee: $event_referee, home_team_logo: $home_team_logo, away_team_logo: $away_team_logo, event_country_key: $event_country_key, league_logo: $league_logo, country_logo: $country_logo, event_home_formation: $event_home_formation, event_away_formation: $event_away_formation, fk_stage_key: $fk_stage_key, stage_name: $stage_name, league_group: $league_group, prediction: $prediction, goalscorers: $goalscorers, substitutes: $substitutes, cards: $cards, lineups: $lineups, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixtureResultImpl &&
            (identical(other.event_key, event_key) ||
                other.event_key == event_key) &&
            (identical(other.event_date, event_date) ||
                other.event_date == event_date) &&
            (identical(other.event_time, event_time) ||
                other.event_time == event_time) &&
            (identical(other.event_home_team, event_home_team) ||
                other.event_home_team == event_home_team) &&
            (identical(other.home_team_key, home_team_key) ||
                other.home_team_key == home_team_key) &&
            (identical(other.event_away_team, event_away_team) ||
                other.event_away_team == event_away_team) &&
            (identical(other.away_team_key, away_team_key) ||
                other.away_team_key == away_team_key) &&
            (identical(other.event_halftime_result, event_halftime_result) ||
                other.event_halftime_result == event_halftime_result) &&
            (identical(other.event_final_result, event_final_result) ||
                other.event_final_result == event_final_result) &&
            (identical(other.event_ft_result, event_ft_result) ||
                other.event_ft_result == event_ft_result) &&
            (identical(other.event_penalty_result, event_penalty_result) ||
                other.event_penalty_result == event_penalty_result) &&
            (identical(other.event_status, event_status) ||
                other.event_status == event_status) &&
            (identical(other.country_name, country_name) ||
                other.country_name == country_name) &&
            (identical(other.league_name, league_name) ||
                other.league_name == league_name) &&
            (identical(other.league_key, league_key) ||
                other.league_key == league_key) &&
            (identical(other.league_round, league_round) ||
                other.league_round == league_round) &&
            (identical(other.league_season, league_season) ||
                other.league_season == league_season) &&
            (identical(other.event_live, event_live) ||
                other.event_live == event_live) &&
            (identical(other.event_stadium, event_stadium) ||
                other.event_stadium == event_stadium) &&
            (identical(other.event_referee, event_referee) ||
                other.event_referee == event_referee) &&
            (identical(other.home_team_logo, home_team_logo) ||
                other.home_team_logo == home_team_logo) &&
            (identical(other.away_team_logo, away_team_logo) ||
                other.away_team_logo == away_team_logo) &&
            (identical(other.event_country_key, event_country_key) ||
                other.event_country_key == event_country_key) &&
            (identical(other.league_logo, league_logo) ||
                other.league_logo == league_logo) &&
            (identical(other.country_logo, country_logo) ||
                other.country_logo == country_logo) &&
            (identical(other.event_home_formation, event_home_formation) ||
                other.event_home_formation == event_home_formation) &&
            (identical(other.event_away_formation, event_away_formation) ||
                other.event_away_formation == event_away_formation) &&
            (identical(other.fk_stage_key, fk_stage_key) ||
                other.fk_stage_key == fk_stage_key) &&
            (identical(other.stage_name, stage_name) ||
                other.stage_name == stage_name) &&
            (identical(other.league_group, league_group) ||
                other.league_group == league_group) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction) &&
            const DeepCollectionEquality()
                .equals(other._goalscorers, _goalscorers) &&
            const DeepCollectionEquality()
                .equals(other._substitutes, _substitutes) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.lineups, lineups) || other.lineups == lineups) &&
            const DeepCollectionEquality()
                .equals(other._statistics, _statistics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        event_key,
        event_date,
        event_time,
        event_home_team,
        home_team_key,
        event_away_team,
        away_team_key,
        event_halftime_result,
        event_final_result,
        event_ft_result,
        event_penalty_result,
        event_status,
        country_name,
        league_name,
        league_key,
        league_round,
        league_season,
        event_live,
        event_stadium,
        event_referee,
        home_team_logo,
        away_team_logo,
        event_country_key,
        league_logo,
        country_logo,
        event_home_formation,
        event_away_formation,
        fk_stage_key,
        stage_name,
        league_group,
        prediction,
        const DeepCollectionEquality().hash(_goalscorers),
        const DeepCollectionEquality().hash(_substitutes),
        const DeepCollectionEquality().hash(_cards),
        lineups,
        const DeepCollectionEquality().hash(_statistics)
      ]);

  /// Create a copy of SoccerFixtureResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixtureResultImplCopyWith<_$SoccerFixtureResultImpl> get copyWith =>
      __$$SoccerFixtureResultImplCopyWithImpl<_$SoccerFixtureResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixtureResultImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixtureResult implements SoccerFixtureResult {
  const factory _SoccerFixtureResult(
          {final int? event_key,
          final String? event_date,
          final String? event_time,
          final String? event_home_team,
          final int? home_team_key,
          final String? event_away_team,
          final int? away_team_key,
          final String? event_halftime_result,
          final String? event_final_result,
          final String? event_ft_result,
          final String? event_penalty_result,
          final String? event_status,
          final String? country_name,
          final String? league_name,
          final int? league_key,
          final String? league_round,
          final String? league_season,
          final String? event_live,
          final String? event_stadium,
          final String? event_referee,
          final String? home_team_logo,
          final String? away_team_logo,
          final int? event_country_key,
          final String? league_logo,
          final String? country_logo,
          final String? event_home_formation,
          final String? event_away_formation,
          final int? fk_stage_key,
          final String? stage_name,
          final String? league_group,
          final String? prediction,
          final List<SoccerFixtureGoalscorer>? goalscorers,
          final List<SoccerFixtureSubstitute>? substitutes,
          final List<SoccerFixtureCard>? cards,
          final SoccerFixtureLineups? lineups,
          final List<SoccerFixtureStatistic>? statistics}) =
      _$SoccerFixtureResultImpl;

  factory _SoccerFixtureResult.fromJson(Map<String, dynamic> json) =
      _$SoccerFixtureResultImpl.fromJson;

  @override
  int? get event_key; // Changed from String? to int?
  @override
  String? get event_date;
  @override
  String? get event_time;
  @override
  String? get event_home_team;
  @override
  int? get home_team_key; // Changed from String? to int?
  @override
  String? get event_away_team;
  @override
  int? get away_team_key; // Changed from String? to int?
  @override
  String? get event_halftime_result;
  @override
  String? get event_final_result;
  @override
  String? get event_ft_result;
  @override
  String? get event_penalty_result;
  @override
  String? get event_status;
  @override
  String? get country_name;
  @override
  String? get league_name;
  @override
  int? get league_key; // Changed from String? to int?
  @override
  String? get league_round;
  @override
  String? get league_season;
  @override
  String? get event_live;
  @override
  String? get event_stadium;
  @override
  String? get event_referee;
  @override
  String? get home_team_logo;
  @override
  String? get away_team_logo;
  @override
  int? get event_country_key; // Changed from String? to int?
  @override
  String? get league_logo;
  @override
  String? get country_logo;
  @override
  String? get event_home_formation;
  @override
  String? get event_away_formation;
  @override
  int? get fk_stage_key;
  @override
  String? get stage_name;
  @override
  String? get league_group;
  @override
  String? get prediction;
  @override
  List<SoccerFixtureGoalscorer>? get goalscorers;
  @override
  List<SoccerFixtureSubstitute>? get substitutes;
  @override
  List<SoccerFixtureCard>? get cards;
  @override
  SoccerFixtureLineups? get lineups;
  @override
  List<SoccerFixtureStatistic>? get statistics;

  /// Create a copy of SoccerFixtureResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixtureResultImplCopyWith<_$SoccerFixtureResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SoccerFixtureGoalscorer _$SoccerFixtureGoalscorerFromJson(
    Map<String, dynamic> json) {
  return _SoccerFixtureGoalscorer.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixtureGoalscorer {
  String? get time => throw _privateConstructorUsedError;
  String? get home_scorer => throw _privateConstructorUsedError;
  String? get home_scorer_id => throw _privateConstructorUsedError;
  String? get home_assist => throw _privateConstructorUsedError;
  String? get home_assist_id => throw _privateConstructorUsedError;
  String? get score => throw _privateConstructorUsedError;
  String? get away_scorer => throw _privateConstructorUsedError;
  String? get away_scorer_id => throw _privateConstructorUsedError;
  String? get away_assist => throw _privateConstructorUsedError;
  String? get away_assist_id => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  String? get info_time => throw _privateConstructorUsedError;

  /// Serializes this SoccerFixtureGoalscorer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixtureGoalscorer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixtureGoalscorerCopyWith<SoccerFixtureGoalscorer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixtureGoalscorerCopyWith<$Res> {
  factory $SoccerFixtureGoalscorerCopyWith(SoccerFixtureGoalscorer value,
          $Res Function(SoccerFixtureGoalscorer) then) =
      _$SoccerFixtureGoalscorerCopyWithImpl<$Res, SoccerFixtureGoalscorer>;
  @useResult
  $Res call(
      {String? time,
      String? home_scorer,
      String? home_scorer_id,
      String? home_assist,
      String? home_assist_id,
      String? score,
      String? away_scorer,
      String? away_scorer_id,
      String? away_assist,
      String? away_assist_id,
      String? info,
      String? info_time});
}

/// @nodoc
class _$SoccerFixtureGoalscorerCopyWithImpl<$Res,
        $Val extends SoccerFixtureGoalscorer>
    implements $SoccerFixtureGoalscorerCopyWith<$Res> {
  _$SoccerFixtureGoalscorerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixtureGoalscorer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? home_scorer = freezed,
    Object? home_scorer_id = freezed,
    Object? home_assist = freezed,
    Object? home_assist_id = freezed,
    Object? score = freezed,
    Object? away_scorer = freezed,
    Object? away_scorer_id = freezed,
    Object? away_assist = freezed,
    Object? away_assist_id = freezed,
    Object? info = freezed,
    Object? info_time = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      home_scorer: freezed == home_scorer
          ? _value.home_scorer
          : home_scorer // ignore: cast_nullable_to_non_nullable
              as String?,
      home_scorer_id: freezed == home_scorer_id
          ? _value.home_scorer_id
          : home_scorer_id // ignore: cast_nullable_to_non_nullable
              as String?,
      home_assist: freezed == home_assist
          ? _value.home_assist
          : home_assist // ignore: cast_nullable_to_non_nullable
              as String?,
      home_assist_id: freezed == home_assist_id
          ? _value.home_assist_id
          : home_assist_id // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      away_scorer: freezed == away_scorer
          ? _value.away_scorer
          : away_scorer // ignore: cast_nullable_to_non_nullable
              as String?,
      away_scorer_id: freezed == away_scorer_id
          ? _value.away_scorer_id
          : away_scorer_id // ignore: cast_nullable_to_non_nullable
              as String?,
      away_assist: freezed == away_assist
          ? _value.away_assist
          : away_assist // ignore: cast_nullable_to_non_nullable
              as String?,
      away_assist_id: freezed == away_assist_id
          ? _value.away_assist_id
          : away_assist_id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      info_time: freezed == info_time
          ? _value.info_time
          : info_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerFixtureGoalscorerImplCopyWith<$Res>
    implements $SoccerFixtureGoalscorerCopyWith<$Res> {
  factory _$$SoccerFixtureGoalscorerImplCopyWith(
          _$SoccerFixtureGoalscorerImpl value,
          $Res Function(_$SoccerFixtureGoalscorerImpl) then) =
      __$$SoccerFixtureGoalscorerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      String? home_scorer,
      String? home_scorer_id,
      String? home_assist,
      String? home_assist_id,
      String? score,
      String? away_scorer,
      String? away_scorer_id,
      String? away_assist,
      String? away_assist_id,
      String? info,
      String? info_time});
}

/// @nodoc
class __$$SoccerFixtureGoalscorerImplCopyWithImpl<$Res>
    extends _$SoccerFixtureGoalscorerCopyWithImpl<$Res,
        _$SoccerFixtureGoalscorerImpl>
    implements _$$SoccerFixtureGoalscorerImplCopyWith<$Res> {
  __$$SoccerFixtureGoalscorerImplCopyWithImpl(
      _$SoccerFixtureGoalscorerImpl _value,
      $Res Function(_$SoccerFixtureGoalscorerImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixtureGoalscorer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? home_scorer = freezed,
    Object? home_scorer_id = freezed,
    Object? home_assist = freezed,
    Object? home_assist_id = freezed,
    Object? score = freezed,
    Object? away_scorer = freezed,
    Object? away_scorer_id = freezed,
    Object? away_assist = freezed,
    Object? away_assist_id = freezed,
    Object? info = freezed,
    Object? info_time = freezed,
  }) {
    return _then(_$SoccerFixtureGoalscorerImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      home_scorer: freezed == home_scorer
          ? _value.home_scorer
          : home_scorer // ignore: cast_nullable_to_non_nullable
              as String?,
      home_scorer_id: freezed == home_scorer_id
          ? _value.home_scorer_id
          : home_scorer_id // ignore: cast_nullable_to_non_nullable
              as String?,
      home_assist: freezed == home_assist
          ? _value.home_assist
          : home_assist // ignore: cast_nullable_to_non_nullable
              as String?,
      home_assist_id: freezed == home_assist_id
          ? _value.home_assist_id
          : home_assist_id // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      away_scorer: freezed == away_scorer
          ? _value.away_scorer
          : away_scorer // ignore: cast_nullable_to_non_nullable
              as String?,
      away_scorer_id: freezed == away_scorer_id
          ? _value.away_scorer_id
          : away_scorer_id // ignore: cast_nullable_to_non_nullable
              as String?,
      away_assist: freezed == away_assist
          ? _value.away_assist
          : away_assist // ignore: cast_nullable_to_non_nullable
              as String?,
      away_assist_id: freezed == away_assist_id
          ? _value.away_assist_id
          : away_assist_id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      info_time: freezed == info_time
          ? _value.info_time
          : info_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerFixtureGoalscorerImpl implements _SoccerFixtureGoalscorer {
  const _$SoccerFixtureGoalscorerImpl(
      {this.time,
      this.home_scorer,
      this.home_scorer_id,
      this.home_assist,
      this.home_assist_id,
      this.score,
      this.away_scorer,
      this.away_scorer_id,
      this.away_assist,
      this.away_assist_id,
      this.info,
      this.info_time});

  factory _$SoccerFixtureGoalscorerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixtureGoalscorerImplFromJson(json);

  @override
  final String? time;
  @override
  final String? home_scorer;
  @override
  final String? home_scorer_id;
  @override
  final String? home_assist;
  @override
  final String? home_assist_id;
  @override
  final String? score;
  @override
  final String? away_scorer;
  @override
  final String? away_scorer_id;
  @override
  final String? away_assist;
  @override
  final String? away_assist_id;
  @override
  final String? info;
  @override
  final String? info_time;

  @override
  String toString() {
    return 'SoccerFixtureGoalscorer(time: $time, home_scorer: $home_scorer, home_scorer_id: $home_scorer_id, home_assist: $home_assist, home_assist_id: $home_assist_id, score: $score, away_scorer: $away_scorer, away_scorer_id: $away_scorer_id, away_assist: $away_assist, away_assist_id: $away_assist_id, info: $info, info_time: $info_time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixtureGoalscorerImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.home_scorer, home_scorer) ||
                other.home_scorer == home_scorer) &&
            (identical(other.home_scorer_id, home_scorer_id) ||
                other.home_scorer_id == home_scorer_id) &&
            (identical(other.home_assist, home_assist) ||
                other.home_assist == home_assist) &&
            (identical(other.home_assist_id, home_assist_id) ||
                other.home_assist_id == home_assist_id) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.away_scorer, away_scorer) ||
                other.away_scorer == away_scorer) &&
            (identical(other.away_scorer_id, away_scorer_id) ||
                other.away_scorer_id == away_scorer_id) &&
            (identical(other.away_assist, away_assist) ||
                other.away_assist == away_assist) &&
            (identical(other.away_assist_id, away_assist_id) ||
                other.away_assist_id == away_assist_id) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.info_time, info_time) ||
                other.info_time == info_time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      home_scorer,
      home_scorer_id,
      home_assist,
      home_assist_id,
      score,
      away_scorer,
      away_scorer_id,
      away_assist,
      away_assist_id,
      info,
      info_time);

  /// Create a copy of SoccerFixtureGoalscorer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixtureGoalscorerImplCopyWith<_$SoccerFixtureGoalscorerImpl>
      get copyWith => __$$SoccerFixtureGoalscorerImplCopyWithImpl<
          _$SoccerFixtureGoalscorerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixtureGoalscorerImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixtureGoalscorer implements SoccerFixtureGoalscorer {
  const factory _SoccerFixtureGoalscorer(
      {final String? time,
      final String? home_scorer,
      final String? home_scorer_id,
      final String? home_assist,
      final String? home_assist_id,
      final String? score,
      final String? away_scorer,
      final String? away_scorer_id,
      final String? away_assist,
      final String? away_assist_id,
      final String? info,
      final String? info_time}) = _$SoccerFixtureGoalscorerImpl;

  factory _SoccerFixtureGoalscorer.fromJson(Map<String, dynamic> json) =
      _$SoccerFixtureGoalscorerImpl.fromJson;

  @override
  String? get time;
  @override
  String? get home_scorer;
  @override
  String? get home_scorer_id;
  @override
  String? get home_assist;
  @override
  String? get home_assist_id;
  @override
  String? get score;
  @override
  String? get away_scorer;
  @override
  String? get away_scorer_id;
  @override
  String? get away_assist;
  @override
  String? get away_assist_id;
  @override
  String? get info;
  @override
  String? get info_time;

  /// Create a copy of SoccerFixtureGoalscorer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixtureGoalscorerImplCopyWith<_$SoccerFixtureGoalscorerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SoccerFixtureSubstitute _$SoccerFixtureSubstituteFromJson(
    Map<String, dynamic> json) {
  return _SoccerFixtureSubstitute.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixtureSubstitute {
  String? get time => throw _privateConstructorUsedError;
  dynamic get home_scorer =>
      throw _privateConstructorUsedError; // Can be List or SoccerFixtureScorer
  dynamic get away_scorer =>
      throw _privateConstructorUsedError; // Can be List or SoccerFixtureScorer
  String? get score => throw _privateConstructorUsedError;

  /// Serializes this SoccerFixtureSubstitute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixtureSubstitute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixtureSubstituteCopyWith<SoccerFixtureSubstitute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixtureSubstituteCopyWith<$Res> {
  factory $SoccerFixtureSubstituteCopyWith(SoccerFixtureSubstitute value,
          $Res Function(SoccerFixtureSubstitute) then) =
      _$SoccerFixtureSubstituteCopyWithImpl<$Res, SoccerFixtureSubstitute>;
  @useResult
  $Res call(
      {String? time, dynamic home_scorer, dynamic away_scorer, String? score});
}

/// @nodoc
class _$SoccerFixtureSubstituteCopyWithImpl<$Res,
        $Val extends SoccerFixtureSubstitute>
    implements $SoccerFixtureSubstituteCopyWith<$Res> {
  _$SoccerFixtureSubstituteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixtureSubstitute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? home_scorer = freezed,
    Object? away_scorer = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      home_scorer: freezed == home_scorer
          ? _value.home_scorer
          : home_scorer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      away_scorer: freezed == away_scorer
          ? _value.away_scorer
          : away_scorer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerFixtureSubstituteImplCopyWith<$Res>
    implements $SoccerFixtureSubstituteCopyWith<$Res> {
  factory _$$SoccerFixtureSubstituteImplCopyWith(
          _$SoccerFixtureSubstituteImpl value,
          $Res Function(_$SoccerFixtureSubstituteImpl) then) =
      __$$SoccerFixtureSubstituteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time, dynamic home_scorer, dynamic away_scorer, String? score});
}

/// @nodoc
class __$$SoccerFixtureSubstituteImplCopyWithImpl<$Res>
    extends _$SoccerFixtureSubstituteCopyWithImpl<$Res,
        _$SoccerFixtureSubstituteImpl>
    implements _$$SoccerFixtureSubstituteImplCopyWith<$Res> {
  __$$SoccerFixtureSubstituteImplCopyWithImpl(
      _$SoccerFixtureSubstituteImpl _value,
      $Res Function(_$SoccerFixtureSubstituteImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixtureSubstitute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? home_scorer = freezed,
    Object? away_scorer = freezed,
    Object? score = freezed,
  }) {
    return _then(_$SoccerFixtureSubstituteImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      home_scorer: freezed == home_scorer
          ? _value.home_scorer
          : home_scorer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      away_scorer: freezed == away_scorer
          ? _value.away_scorer
          : away_scorer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerFixtureSubstituteImpl implements _SoccerFixtureSubstitute {
  const _$SoccerFixtureSubstituteImpl(
      {this.time, this.home_scorer, this.away_scorer, this.score});

  factory _$SoccerFixtureSubstituteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixtureSubstituteImplFromJson(json);

  @override
  final String? time;
  @override
  final dynamic home_scorer;
// Can be List or SoccerFixtureScorer
  @override
  final dynamic away_scorer;
// Can be List or SoccerFixtureScorer
  @override
  final String? score;

  @override
  String toString() {
    return 'SoccerFixtureSubstitute(time: $time, home_scorer: $home_scorer, away_scorer: $away_scorer, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixtureSubstituteImpl &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality()
                .equals(other.home_scorer, home_scorer) &&
            const DeepCollectionEquality()
                .equals(other.away_scorer, away_scorer) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      const DeepCollectionEquality().hash(home_scorer),
      const DeepCollectionEquality().hash(away_scorer),
      score);

  /// Create a copy of SoccerFixtureSubstitute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixtureSubstituteImplCopyWith<_$SoccerFixtureSubstituteImpl>
      get copyWith => __$$SoccerFixtureSubstituteImplCopyWithImpl<
          _$SoccerFixtureSubstituteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixtureSubstituteImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixtureSubstitute implements SoccerFixtureSubstitute {
  const factory _SoccerFixtureSubstitute(
      {final String? time,
      final dynamic home_scorer,
      final dynamic away_scorer,
      final String? score}) = _$SoccerFixtureSubstituteImpl;

  factory _SoccerFixtureSubstitute.fromJson(Map<String, dynamic> json) =
      _$SoccerFixtureSubstituteImpl.fromJson;

  @override
  String? get time;
  @override
  dynamic get home_scorer; // Can be List or SoccerFixtureScorer
  @override
  dynamic get away_scorer; // Can be List or SoccerFixtureScorer
  @override
  String? get score;

  /// Create a copy of SoccerFixtureSubstitute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixtureSubstituteImplCopyWith<_$SoccerFixtureSubstituteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SoccerFixtureScorer _$SoccerFixtureScorerFromJson(Map<String, dynamic> json) {
  return _SoccerFixtureScorer.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixtureScorer {
  @JsonKey(name: 'in')
  String? get inPlayer => throw _privateConstructorUsedError;
  @JsonKey(name: 'out')
  String? get outPlayer => throw _privateConstructorUsedError;

  /// Serializes this SoccerFixtureScorer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixtureScorer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixtureScorerCopyWith<SoccerFixtureScorer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixtureScorerCopyWith<$Res> {
  factory $SoccerFixtureScorerCopyWith(
          SoccerFixtureScorer value, $Res Function(SoccerFixtureScorer) then) =
      _$SoccerFixtureScorerCopyWithImpl<$Res, SoccerFixtureScorer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'in') String? inPlayer,
      @JsonKey(name: 'out') String? outPlayer});
}

/// @nodoc
class _$SoccerFixtureScorerCopyWithImpl<$Res, $Val extends SoccerFixtureScorer>
    implements $SoccerFixtureScorerCopyWith<$Res> {
  _$SoccerFixtureScorerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixtureScorer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inPlayer = freezed,
    Object? outPlayer = freezed,
  }) {
    return _then(_value.copyWith(
      inPlayer: freezed == inPlayer
          ? _value.inPlayer
          : inPlayer // ignore: cast_nullable_to_non_nullable
              as String?,
      outPlayer: freezed == outPlayer
          ? _value.outPlayer
          : outPlayer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerFixtureScorerImplCopyWith<$Res>
    implements $SoccerFixtureScorerCopyWith<$Res> {
  factory _$$SoccerFixtureScorerImplCopyWith(_$SoccerFixtureScorerImpl value,
          $Res Function(_$SoccerFixtureScorerImpl) then) =
      __$$SoccerFixtureScorerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'in') String? inPlayer,
      @JsonKey(name: 'out') String? outPlayer});
}

/// @nodoc
class __$$SoccerFixtureScorerImplCopyWithImpl<$Res>
    extends _$SoccerFixtureScorerCopyWithImpl<$Res, _$SoccerFixtureScorerImpl>
    implements _$$SoccerFixtureScorerImplCopyWith<$Res> {
  __$$SoccerFixtureScorerImplCopyWithImpl(_$SoccerFixtureScorerImpl _value,
      $Res Function(_$SoccerFixtureScorerImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixtureScorer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inPlayer = freezed,
    Object? outPlayer = freezed,
  }) {
    return _then(_$SoccerFixtureScorerImpl(
      inPlayer: freezed == inPlayer
          ? _value.inPlayer
          : inPlayer // ignore: cast_nullable_to_non_nullable
              as String?,
      outPlayer: freezed == outPlayer
          ? _value.outPlayer
          : outPlayer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerFixtureScorerImpl implements _SoccerFixtureScorer {
  const _$SoccerFixtureScorerImpl(
      {@JsonKey(name: 'in') this.inPlayer,
      @JsonKey(name: 'out') this.outPlayer});

  factory _$SoccerFixtureScorerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixtureScorerImplFromJson(json);

  @override
  @JsonKey(name: 'in')
  final String? inPlayer;
  @override
  @JsonKey(name: 'out')
  final String? outPlayer;

  @override
  String toString() {
    return 'SoccerFixtureScorer(inPlayer: $inPlayer, outPlayer: $outPlayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixtureScorerImpl &&
            (identical(other.inPlayer, inPlayer) ||
                other.inPlayer == inPlayer) &&
            (identical(other.outPlayer, outPlayer) ||
                other.outPlayer == outPlayer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inPlayer, outPlayer);

  /// Create a copy of SoccerFixtureScorer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixtureScorerImplCopyWith<_$SoccerFixtureScorerImpl> get copyWith =>
      __$$SoccerFixtureScorerImplCopyWithImpl<_$SoccerFixtureScorerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixtureScorerImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixtureScorer implements SoccerFixtureScorer {
  const factory _SoccerFixtureScorer(
          {@JsonKey(name: 'in') final String? inPlayer,
          @JsonKey(name: 'out') final String? outPlayer}) =
      _$SoccerFixtureScorerImpl;

  factory _SoccerFixtureScorer.fromJson(Map<String, dynamic> json) =
      _$SoccerFixtureScorerImpl.fromJson;

  @override
  @JsonKey(name: 'in')
  String? get inPlayer;
  @override
  @JsonKey(name: 'out')
  String? get outPlayer;

  /// Create a copy of SoccerFixtureScorer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixtureScorerImplCopyWith<_$SoccerFixtureScorerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SoccerFixtureCard _$SoccerFixtureCardFromJson(Map<String, dynamic> json) {
  return _SoccerFixtureCard.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixtureCard {
  String? get time => throw _privateConstructorUsedError;
  String? get home_fault => throw _privateConstructorUsedError;
  String? get card => throw _privateConstructorUsedError;
  String? get away_fault => throw _privateConstructorUsedError;

  /// Serializes this SoccerFixtureCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixtureCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixtureCardCopyWith<SoccerFixtureCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixtureCardCopyWith<$Res> {
  factory $SoccerFixtureCardCopyWith(
          SoccerFixtureCard value, $Res Function(SoccerFixtureCard) then) =
      _$SoccerFixtureCardCopyWithImpl<$Res, SoccerFixtureCard>;
  @useResult
  $Res call(
      {String? time, String? home_fault, String? card, String? away_fault});
}

/// @nodoc
class _$SoccerFixtureCardCopyWithImpl<$Res, $Val extends SoccerFixtureCard>
    implements $SoccerFixtureCardCopyWith<$Res> {
  _$SoccerFixtureCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixtureCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? home_fault = freezed,
    Object? card = freezed,
    Object? away_fault = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      home_fault: freezed == home_fault
          ? _value.home_fault
          : home_fault // ignore: cast_nullable_to_non_nullable
              as String?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String?,
      away_fault: freezed == away_fault
          ? _value.away_fault
          : away_fault // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerFixtureCardImplCopyWith<$Res>
    implements $SoccerFixtureCardCopyWith<$Res> {
  factory _$$SoccerFixtureCardImplCopyWith(_$SoccerFixtureCardImpl value,
          $Res Function(_$SoccerFixtureCardImpl) then) =
      __$$SoccerFixtureCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time, String? home_fault, String? card, String? away_fault});
}

/// @nodoc
class __$$SoccerFixtureCardImplCopyWithImpl<$Res>
    extends _$SoccerFixtureCardCopyWithImpl<$Res, _$SoccerFixtureCardImpl>
    implements _$$SoccerFixtureCardImplCopyWith<$Res> {
  __$$SoccerFixtureCardImplCopyWithImpl(_$SoccerFixtureCardImpl _value,
      $Res Function(_$SoccerFixtureCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixtureCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? home_fault = freezed,
    Object? card = freezed,
    Object? away_fault = freezed,
  }) {
    return _then(_$SoccerFixtureCardImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      home_fault: freezed == home_fault
          ? _value.home_fault
          : home_fault // ignore: cast_nullable_to_non_nullable
              as String?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String?,
      away_fault: freezed == away_fault
          ? _value.away_fault
          : away_fault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerFixtureCardImpl implements _SoccerFixtureCard {
  const _$SoccerFixtureCardImpl(
      {this.time, this.home_fault, this.card, this.away_fault});

  factory _$SoccerFixtureCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixtureCardImplFromJson(json);

  @override
  final String? time;
  @override
  final String? home_fault;
  @override
  final String? card;
  @override
  final String? away_fault;

  @override
  String toString() {
    return 'SoccerFixtureCard(time: $time, home_fault: $home_fault, card: $card, away_fault: $away_fault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixtureCardImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.home_fault, home_fault) ||
                other.home_fault == home_fault) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.away_fault, away_fault) ||
                other.away_fault == away_fault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, home_fault, card, away_fault);

  /// Create a copy of SoccerFixtureCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixtureCardImplCopyWith<_$SoccerFixtureCardImpl> get copyWith =>
      __$$SoccerFixtureCardImplCopyWithImpl<_$SoccerFixtureCardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixtureCardImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixtureCard implements SoccerFixtureCard {
  const factory _SoccerFixtureCard(
      {final String? time,
      final String? home_fault,
      final String? card,
      final String? away_fault}) = _$SoccerFixtureCardImpl;

  factory _SoccerFixtureCard.fromJson(Map<String, dynamic> json) =
      _$SoccerFixtureCardImpl.fromJson;

  @override
  String? get time;
  @override
  String? get home_fault;
  @override
  String? get card;
  @override
  String? get away_fault;

  /// Create a copy of SoccerFixtureCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixtureCardImplCopyWith<_$SoccerFixtureCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SoccerFixtureLineups _$SoccerFixtureLineupsFromJson(Map<String, dynamic> json) {
  return _SoccerFixtureLineups.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixtureLineups {
  SoccerFixtureTeamLineup? get home_team => throw _privateConstructorUsedError;
  SoccerFixtureTeamLineup? get away_team => throw _privateConstructorUsedError;

  /// Serializes this SoccerFixtureLineups to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixtureLineups
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixtureLineupsCopyWith<SoccerFixtureLineups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixtureLineupsCopyWith<$Res> {
  factory $SoccerFixtureLineupsCopyWith(SoccerFixtureLineups value,
          $Res Function(SoccerFixtureLineups) then) =
      _$SoccerFixtureLineupsCopyWithImpl<$Res, SoccerFixtureLineups>;
  @useResult
  $Res call(
      {SoccerFixtureTeamLineup? home_team, SoccerFixtureTeamLineup? away_team});

  $SoccerFixtureTeamLineupCopyWith<$Res>? get home_team;
  $SoccerFixtureTeamLineupCopyWith<$Res>? get away_team;
}

/// @nodoc
class _$SoccerFixtureLineupsCopyWithImpl<$Res,
        $Val extends SoccerFixtureLineups>
    implements $SoccerFixtureLineupsCopyWith<$Res> {
  _$SoccerFixtureLineupsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixtureLineups
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home_team = freezed,
    Object? away_team = freezed,
  }) {
    return _then(_value.copyWith(
      home_team: freezed == home_team
          ? _value.home_team
          : home_team // ignore: cast_nullable_to_non_nullable
              as SoccerFixtureTeamLineup?,
      away_team: freezed == away_team
          ? _value.away_team
          : away_team // ignore: cast_nullable_to_non_nullable
              as SoccerFixtureTeamLineup?,
    ) as $Val);
  }

  /// Create a copy of SoccerFixtureLineups
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoccerFixtureTeamLineupCopyWith<$Res>? get home_team {
    if (_value.home_team == null) {
      return null;
    }

    return $SoccerFixtureTeamLineupCopyWith<$Res>(_value.home_team!, (value) {
      return _then(_value.copyWith(home_team: value) as $Val);
    });
  }

  /// Create a copy of SoccerFixtureLineups
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoccerFixtureTeamLineupCopyWith<$Res>? get away_team {
    if (_value.away_team == null) {
      return null;
    }

    return $SoccerFixtureTeamLineupCopyWith<$Res>(_value.away_team!, (value) {
      return _then(_value.copyWith(away_team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SoccerFixtureLineupsImplCopyWith<$Res>
    implements $SoccerFixtureLineupsCopyWith<$Res> {
  factory _$$SoccerFixtureLineupsImplCopyWith(_$SoccerFixtureLineupsImpl value,
          $Res Function(_$SoccerFixtureLineupsImpl) then) =
      __$$SoccerFixtureLineupsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SoccerFixtureTeamLineup? home_team, SoccerFixtureTeamLineup? away_team});

  @override
  $SoccerFixtureTeamLineupCopyWith<$Res>? get home_team;
  @override
  $SoccerFixtureTeamLineupCopyWith<$Res>? get away_team;
}

/// @nodoc
class __$$SoccerFixtureLineupsImplCopyWithImpl<$Res>
    extends _$SoccerFixtureLineupsCopyWithImpl<$Res, _$SoccerFixtureLineupsImpl>
    implements _$$SoccerFixtureLineupsImplCopyWith<$Res> {
  __$$SoccerFixtureLineupsImplCopyWithImpl(_$SoccerFixtureLineupsImpl _value,
      $Res Function(_$SoccerFixtureLineupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixtureLineups
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home_team = freezed,
    Object? away_team = freezed,
  }) {
    return _then(_$SoccerFixtureLineupsImpl(
      home_team: freezed == home_team
          ? _value.home_team
          : home_team // ignore: cast_nullable_to_non_nullable
              as SoccerFixtureTeamLineup?,
      away_team: freezed == away_team
          ? _value.away_team
          : away_team // ignore: cast_nullable_to_non_nullable
              as SoccerFixtureTeamLineup?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerFixtureLineupsImpl implements _SoccerFixtureLineups {
  const _$SoccerFixtureLineupsImpl({this.home_team, this.away_team});

  factory _$SoccerFixtureLineupsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixtureLineupsImplFromJson(json);

  @override
  final SoccerFixtureTeamLineup? home_team;
  @override
  final SoccerFixtureTeamLineup? away_team;

  @override
  String toString() {
    return 'SoccerFixtureLineups(home_team: $home_team, away_team: $away_team)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixtureLineupsImpl &&
            (identical(other.home_team, home_team) ||
                other.home_team == home_team) &&
            (identical(other.away_team, away_team) ||
                other.away_team == away_team));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, home_team, away_team);

  /// Create a copy of SoccerFixtureLineups
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixtureLineupsImplCopyWith<_$SoccerFixtureLineupsImpl>
      get copyWith =>
          __$$SoccerFixtureLineupsImplCopyWithImpl<_$SoccerFixtureLineupsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixtureLineupsImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixtureLineups implements SoccerFixtureLineups {
  const factory _SoccerFixtureLineups(
      {final SoccerFixtureTeamLineup? home_team,
      final SoccerFixtureTeamLineup? away_team}) = _$SoccerFixtureLineupsImpl;

  factory _SoccerFixtureLineups.fromJson(Map<String, dynamic> json) =
      _$SoccerFixtureLineupsImpl.fromJson;

  @override
  SoccerFixtureTeamLineup? get home_team;
  @override
  SoccerFixtureTeamLineup? get away_team;

  /// Create a copy of SoccerFixtureLineups
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixtureLineupsImplCopyWith<_$SoccerFixtureLineupsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SoccerFixtureTeamLineup _$SoccerFixtureTeamLineupFromJson(
    Map<String, dynamic> json) {
  return _SoccerFixtureTeamLineup.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixtureTeamLineup {
  List<SoccerFixturePlayer>? get starting_lineups =>
      throw _privateConstructorUsedError;
  List<SoccerFixturePlayer>? get substitutes =>
      throw _privateConstructorUsedError;
  List<SoccerFixtureCoach>? get coaches => throw _privateConstructorUsedError;
  List<dynamic>? get missing_players => throw _privateConstructorUsedError;

  /// Serializes this SoccerFixtureTeamLineup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixtureTeamLineup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixtureTeamLineupCopyWith<SoccerFixtureTeamLineup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixtureTeamLineupCopyWith<$Res> {
  factory $SoccerFixtureTeamLineupCopyWith(SoccerFixtureTeamLineup value,
          $Res Function(SoccerFixtureTeamLineup) then) =
      _$SoccerFixtureTeamLineupCopyWithImpl<$Res, SoccerFixtureTeamLineup>;
  @useResult
  $Res call(
      {List<SoccerFixturePlayer>? starting_lineups,
      List<SoccerFixturePlayer>? substitutes,
      List<SoccerFixtureCoach>? coaches,
      List<dynamic>? missing_players});
}

/// @nodoc
class _$SoccerFixtureTeamLineupCopyWithImpl<$Res,
        $Val extends SoccerFixtureTeamLineup>
    implements $SoccerFixtureTeamLineupCopyWith<$Res> {
  _$SoccerFixtureTeamLineupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixtureTeamLineup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? starting_lineups = freezed,
    Object? substitutes = freezed,
    Object? coaches = freezed,
    Object? missing_players = freezed,
  }) {
    return _then(_value.copyWith(
      starting_lineups: freezed == starting_lineups
          ? _value.starting_lineups
          : starting_lineups // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixturePlayer>?,
      substitutes: freezed == substitutes
          ? _value.substitutes
          : substitutes // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixturePlayer>?,
      coaches: freezed == coaches
          ? _value.coaches
          : coaches // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureCoach>?,
      missing_players: freezed == missing_players
          ? _value.missing_players
          : missing_players // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerFixtureTeamLineupImplCopyWith<$Res>
    implements $SoccerFixtureTeamLineupCopyWith<$Res> {
  factory _$$SoccerFixtureTeamLineupImplCopyWith(
          _$SoccerFixtureTeamLineupImpl value,
          $Res Function(_$SoccerFixtureTeamLineupImpl) then) =
      __$$SoccerFixtureTeamLineupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SoccerFixturePlayer>? starting_lineups,
      List<SoccerFixturePlayer>? substitutes,
      List<SoccerFixtureCoach>? coaches,
      List<dynamic>? missing_players});
}

/// @nodoc
class __$$SoccerFixtureTeamLineupImplCopyWithImpl<$Res>
    extends _$SoccerFixtureTeamLineupCopyWithImpl<$Res,
        _$SoccerFixtureTeamLineupImpl>
    implements _$$SoccerFixtureTeamLineupImplCopyWith<$Res> {
  __$$SoccerFixtureTeamLineupImplCopyWithImpl(
      _$SoccerFixtureTeamLineupImpl _value,
      $Res Function(_$SoccerFixtureTeamLineupImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixtureTeamLineup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? starting_lineups = freezed,
    Object? substitutes = freezed,
    Object? coaches = freezed,
    Object? missing_players = freezed,
  }) {
    return _then(_$SoccerFixtureTeamLineupImpl(
      starting_lineups: freezed == starting_lineups
          ? _value._starting_lineups
          : starting_lineups // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixturePlayer>?,
      substitutes: freezed == substitutes
          ? _value._substitutes
          : substitutes // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixturePlayer>?,
      coaches: freezed == coaches
          ? _value._coaches
          : coaches // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureCoach>?,
      missing_players: freezed == missing_players
          ? _value._missing_players
          : missing_players // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerFixtureTeamLineupImpl implements _SoccerFixtureTeamLineup {
  const _$SoccerFixtureTeamLineupImpl(
      {final List<SoccerFixturePlayer>? starting_lineups,
      final List<SoccerFixturePlayer>? substitutes,
      final List<SoccerFixtureCoach>? coaches,
      final List<dynamic>? missing_players})
      : _starting_lineups = starting_lineups,
        _substitutes = substitutes,
        _coaches = coaches,
        _missing_players = missing_players;

  factory _$SoccerFixtureTeamLineupImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixtureTeamLineupImplFromJson(json);

  final List<SoccerFixturePlayer>? _starting_lineups;
  @override
  List<SoccerFixturePlayer>? get starting_lineups {
    final value = _starting_lineups;
    if (value == null) return null;
    if (_starting_lineups is EqualUnmodifiableListView)
      return _starting_lineups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SoccerFixturePlayer>? _substitutes;
  @override
  List<SoccerFixturePlayer>? get substitutes {
    final value = _substitutes;
    if (value == null) return null;
    if (_substitutes is EqualUnmodifiableListView) return _substitutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SoccerFixtureCoach>? _coaches;
  @override
  List<SoccerFixtureCoach>? get coaches {
    final value = _coaches;
    if (value == null) return null;
    if (_coaches is EqualUnmodifiableListView) return _coaches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _missing_players;
  @override
  List<dynamic>? get missing_players {
    final value = _missing_players;
    if (value == null) return null;
    if (_missing_players is EqualUnmodifiableListView) return _missing_players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SoccerFixtureTeamLineup(starting_lineups: $starting_lineups, substitutes: $substitutes, coaches: $coaches, missing_players: $missing_players)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixtureTeamLineupImpl &&
            const DeepCollectionEquality()
                .equals(other._starting_lineups, _starting_lineups) &&
            const DeepCollectionEquality()
                .equals(other._substitutes, _substitutes) &&
            const DeepCollectionEquality().equals(other._coaches, _coaches) &&
            const DeepCollectionEquality()
                .equals(other._missing_players, _missing_players));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_starting_lineups),
      const DeepCollectionEquality().hash(_substitutes),
      const DeepCollectionEquality().hash(_coaches),
      const DeepCollectionEquality().hash(_missing_players));

  /// Create a copy of SoccerFixtureTeamLineup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixtureTeamLineupImplCopyWith<_$SoccerFixtureTeamLineupImpl>
      get copyWith => __$$SoccerFixtureTeamLineupImplCopyWithImpl<
          _$SoccerFixtureTeamLineupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixtureTeamLineupImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixtureTeamLineup implements SoccerFixtureTeamLineup {
  const factory _SoccerFixtureTeamLineup(
      {final List<SoccerFixturePlayer>? starting_lineups,
      final List<SoccerFixturePlayer>? substitutes,
      final List<SoccerFixtureCoach>? coaches,
      final List<dynamic>? missing_players}) = _$SoccerFixtureTeamLineupImpl;

  factory _SoccerFixtureTeamLineup.fromJson(Map<String, dynamic> json) =
      _$SoccerFixtureTeamLineupImpl.fromJson;

  @override
  List<SoccerFixturePlayer>? get starting_lineups;
  @override
  List<SoccerFixturePlayer>? get substitutes;
  @override
  List<SoccerFixtureCoach>? get coaches;
  @override
  List<dynamic>? get missing_players;

  /// Create a copy of SoccerFixtureTeamLineup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixtureTeamLineupImplCopyWith<_$SoccerFixtureTeamLineupImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SoccerFixturePlayer _$SoccerFixturePlayerFromJson(Map<String, dynamic> json) {
  return _SoccerFixturePlayer.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixturePlayer {
  String? get player => throw _privateConstructorUsedError;
  int? get player_number => throw _privateConstructorUsedError;
  int? get player_position => throw _privateConstructorUsedError;
  String? get player_country => throw _privateConstructorUsedError;
  int? get player_key => throw _privateConstructorUsedError;

  /// Serializes this SoccerFixturePlayer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixturePlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixturePlayerCopyWith<SoccerFixturePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixturePlayerCopyWith<$Res> {
  factory $SoccerFixturePlayerCopyWith(
          SoccerFixturePlayer value, $Res Function(SoccerFixturePlayer) then) =
      _$SoccerFixturePlayerCopyWithImpl<$Res, SoccerFixturePlayer>;
  @useResult
  $Res call(
      {String? player,
      int? player_number,
      int? player_position,
      String? player_country,
      int? player_key});
}

/// @nodoc
class _$SoccerFixturePlayerCopyWithImpl<$Res, $Val extends SoccerFixturePlayer>
    implements $SoccerFixturePlayerCopyWith<$Res> {
  _$SoccerFixturePlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixturePlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = freezed,
    Object? player_number = freezed,
    Object? player_position = freezed,
    Object? player_country = freezed,
    Object? player_key = freezed,
  }) {
    return _then(_value.copyWith(
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as String?,
      player_number: freezed == player_number
          ? _value.player_number
          : player_number // ignore: cast_nullable_to_non_nullable
              as int?,
      player_position: freezed == player_position
          ? _value.player_position
          : player_position // ignore: cast_nullable_to_non_nullable
              as int?,
      player_country: freezed == player_country
          ? _value.player_country
          : player_country // ignore: cast_nullable_to_non_nullable
              as String?,
      player_key: freezed == player_key
          ? _value.player_key
          : player_key // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerFixturePlayerImplCopyWith<$Res>
    implements $SoccerFixturePlayerCopyWith<$Res> {
  factory _$$SoccerFixturePlayerImplCopyWith(_$SoccerFixturePlayerImpl value,
          $Res Function(_$SoccerFixturePlayerImpl) then) =
      __$$SoccerFixturePlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? player,
      int? player_number,
      int? player_position,
      String? player_country,
      int? player_key});
}

/// @nodoc
class __$$SoccerFixturePlayerImplCopyWithImpl<$Res>
    extends _$SoccerFixturePlayerCopyWithImpl<$Res, _$SoccerFixturePlayerImpl>
    implements _$$SoccerFixturePlayerImplCopyWith<$Res> {
  __$$SoccerFixturePlayerImplCopyWithImpl(_$SoccerFixturePlayerImpl _value,
      $Res Function(_$SoccerFixturePlayerImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixturePlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = freezed,
    Object? player_number = freezed,
    Object? player_position = freezed,
    Object? player_country = freezed,
    Object? player_key = freezed,
  }) {
    return _then(_$SoccerFixturePlayerImpl(
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as String?,
      player_number: freezed == player_number
          ? _value.player_number
          : player_number // ignore: cast_nullable_to_non_nullable
              as int?,
      player_position: freezed == player_position
          ? _value.player_position
          : player_position // ignore: cast_nullable_to_non_nullable
              as int?,
      player_country: freezed == player_country
          ? _value.player_country
          : player_country // ignore: cast_nullable_to_non_nullable
              as String?,
      player_key: freezed == player_key
          ? _value.player_key
          : player_key // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerFixturePlayerImpl implements _SoccerFixturePlayer {
  const _$SoccerFixturePlayerImpl(
      {this.player,
      this.player_number,
      this.player_position,
      this.player_country,
      this.player_key});

  factory _$SoccerFixturePlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixturePlayerImplFromJson(json);

  @override
  final String? player;
  @override
  final int? player_number;
  @override
  final int? player_position;
  @override
  final String? player_country;
  @override
  final int? player_key;

  @override
  String toString() {
    return 'SoccerFixturePlayer(player: $player, player_number: $player_number, player_position: $player_position, player_country: $player_country, player_key: $player_key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixturePlayerImpl &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.player_number, player_number) ||
                other.player_number == player_number) &&
            (identical(other.player_position, player_position) ||
                other.player_position == player_position) &&
            (identical(other.player_country, player_country) ||
                other.player_country == player_country) &&
            (identical(other.player_key, player_key) ||
                other.player_key == player_key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, player, player_number,
      player_position, player_country, player_key);

  /// Create a copy of SoccerFixturePlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixturePlayerImplCopyWith<_$SoccerFixturePlayerImpl> get copyWith =>
      __$$SoccerFixturePlayerImplCopyWithImpl<_$SoccerFixturePlayerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixturePlayerImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixturePlayer implements SoccerFixturePlayer {
  const factory _SoccerFixturePlayer(
      {final String? player,
      final int? player_number,
      final int? player_position,
      final String? player_country,
      final int? player_key}) = _$SoccerFixturePlayerImpl;

  factory _SoccerFixturePlayer.fromJson(Map<String, dynamic> json) =
      _$SoccerFixturePlayerImpl.fromJson;

  @override
  String? get player;
  @override
  int? get player_number;
  @override
  int? get player_position;
  @override
  String? get player_country;
  @override
  int? get player_key;

  /// Create a copy of SoccerFixturePlayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixturePlayerImplCopyWith<_$SoccerFixturePlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SoccerFixtureCoach _$SoccerFixtureCoachFromJson(Map<String, dynamic> json) {
  return _SoccerFixtureCoach.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixtureCoach {
  String? get coache => throw _privateConstructorUsedError;
  String? get coache_country => throw _privateConstructorUsedError;

  /// Serializes this SoccerFixtureCoach to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixtureCoach
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixtureCoachCopyWith<SoccerFixtureCoach> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixtureCoachCopyWith<$Res> {
  factory $SoccerFixtureCoachCopyWith(
          SoccerFixtureCoach value, $Res Function(SoccerFixtureCoach) then) =
      _$SoccerFixtureCoachCopyWithImpl<$Res, SoccerFixtureCoach>;
  @useResult
  $Res call({String? coache, String? coache_country});
}

/// @nodoc
class _$SoccerFixtureCoachCopyWithImpl<$Res, $Val extends SoccerFixtureCoach>
    implements $SoccerFixtureCoachCopyWith<$Res> {
  _$SoccerFixtureCoachCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixtureCoach
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coache = freezed,
    Object? coache_country = freezed,
  }) {
    return _then(_value.copyWith(
      coache: freezed == coache
          ? _value.coache
          : coache // ignore: cast_nullable_to_non_nullable
              as String?,
      coache_country: freezed == coache_country
          ? _value.coache_country
          : coache_country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerFixtureCoachImplCopyWith<$Res>
    implements $SoccerFixtureCoachCopyWith<$Res> {
  factory _$$SoccerFixtureCoachImplCopyWith(_$SoccerFixtureCoachImpl value,
          $Res Function(_$SoccerFixtureCoachImpl) then) =
      __$$SoccerFixtureCoachImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? coache, String? coache_country});
}

/// @nodoc
class __$$SoccerFixtureCoachImplCopyWithImpl<$Res>
    extends _$SoccerFixtureCoachCopyWithImpl<$Res, _$SoccerFixtureCoachImpl>
    implements _$$SoccerFixtureCoachImplCopyWith<$Res> {
  __$$SoccerFixtureCoachImplCopyWithImpl(_$SoccerFixtureCoachImpl _value,
      $Res Function(_$SoccerFixtureCoachImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixtureCoach
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coache = freezed,
    Object? coache_country = freezed,
  }) {
    return _then(_$SoccerFixtureCoachImpl(
      coache: freezed == coache
          ? _value.coache
          : coache // ignore: cast_nullable_to_non_nullable
              as String?,
      coache_country: freezed == coache_country
          ? _value.coache_country
          : coache_country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerFixtureCoachImpl implements _SoccerFixtureCoach {
  const _$SoccerFixtureCoachImpl({this.coache, this.coache_country});

  factory _$SoccerFixtureCoachImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixtureCoachImplFromJson(json);

  @override
  final String? coache;
  @override
  final String? coache_country;

  @override
  String toString() {
    return 'SoccerFixtureCoach(coache: $coache, coache_country: $coache_country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixtureCoachImpl &&
            (identical(other.coache, coache) || other.coache == coache) &&
            (identical(other.coache_country, coache_country) ||
                other.coache_country == coache_country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coache, coache_country);

  /// Create a copy of SoccerFixtureCoach
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixtureCoachImplCopyWith<_$SoccerFixtureCoachImpl> get copyWith =>
      __$$SoccerFixtureCoachImplCopyWithImpl<_$SoccerFixtureCoachImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixtureCoachImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixtureCoach implements SoccerFixtureCoach {
  const factory _SoccerFixtureCoach(
      {final String? coache,
      final String? coache_country}) = _$SoccerFixtureCoachImpl;

  factory _SoccerFixtureCoach.fromJson(Map<String, dynamic> json) =
      _$SoccerFixtureCoachImpl.fromJson;

  @override
  String? get coache;
  @override
  String? get coache_country;

  /// Create a copy of SoccerFixtureCoach
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixtureCoachImplCopyWith<_$SoccerFixtureCoachImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SoccerFixtureStatistic _$SoccerFixtureStatisticFromJson(
    Map<String, dynamic> json) {
  return _SoccerFixtureStatistic.fromJson(json);
}

/// @nodoc
mixin _$SoccerFixtureStatistic {
  String? get type => throw _privateConstructorUsedError;
  String? get home => throw _privateConstructorUsedError;
  String? get away => throw _privateConstructorUsedError;

  /// Serializes this SoccerFixtureStatistic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerFixtureStatistic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerFixtureStatisticCopyWith<SoccerFixtureStatistic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerFixtureStatisticCopyWith<$Res> {
  factory $SoccerFixtureStatisticCopyWith(SoccerFixtureStatistic value,
          $Res Function(SoccerFixtureStatistic) then) =
      _$SoccerFixtureStatisticCopyWithImpl<$Res, SoccerFixtureStatistic>;
  @useResult
  $Res call({String? type, String? home, String? away});
}

/// @nodoc
class _$SoccerFixtureStatisticCopyWithImpl<$Res,
        $Val extends SoccerFixtureStatistic>
    implements $SoccerFixtureStatisticCopyWith<$Res> {
  _$SoccerFixtureStatisticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerFixtureStatistic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as String?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerFixtureStatisticImplCopyWith<$Res>
    implements $SoccerFixtureStatisticCopyWith<$Res> {
  factory _$$SoccerFixtureStatisticImplCopyWith(
          _$SoccerFixtureStatisticImpl value,
          $Res Function(_$SoccerFixtureStatisticImpl) then) =
      __$$SoccerFixtureStatisticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? home, String? away});
}

/// @nodoc
class __$$SoccerFixtureStatisticImplCopyWithImpl<$Res>
    extends _$SoccerFixtureStatisticCopyWithImpl<$Res,
        _$SoccerFixtureStatisticImpl>
    implements _$$SoccerFixtureStatisticImplCopyWith<$Res> {
  __$$SoccerFixtureStatisticImplCopyWithImpl(
      _$SoccerFixtureStatisticImpl _value,
      $Res Function(_$SoccerFixtureStatisticImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerFixtureStatistic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_$SoccerFixtureStatisticImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
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
class _$SoccerFixtureStatisticImpl implements _SoccerFixtureStatistic {
  const _$SoccerFixtureStatisticImpl({this.type, this.home, this.away});

  factory _$SoccerFixtureStatisticImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerFixtureStatisticImplFromJson(json);

  @override
  final String? type;
  @override
  final String? home;
  @override
  final String? away;

  @override
  String toString() {
    return 'SoccerFixtureStatistic(type: $type, home: $home, away: $away)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerFixtureStatisticImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, home, away);

  /// Create a copy of SoccerFixtureStatistic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerFixtureStatisticImplCopyWith<_$SoccerFixtureStatisticImpl>
      get copyWith => __$$SoccerFixtureStatisticImplCopyWithImpl<
          _$SoccerFixtureStatisticImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerFixtureStatisticImplToJson(
      this,
    );
  }
}

abstract class _SoccerFixtureStatistic implements SoccerFixtureStatistic {
  const factory _SoccerFixtureStatistic(
      {final String? type,
      final String? home,
      final String? away}) = _$SoccerFixtureStatisticImpl;

  factory _SoccerFixtureStatistic.fromJson(Map<String, dynamic> json) =
      _$SoccerFixtureStatisticImpl.fromJson;

  @override
  String? get type;
  @override
  String? get home;
  @override
  String? get away;

  /// Create a copy of SoccerFixtureStatistic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerFixtureStatisticImplCopyWith<_$SoccerFixtureStatisticImpl>
      get copyWith => throw _privateConstructorUsedError;
}
