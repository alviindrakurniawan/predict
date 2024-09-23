// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'soccer_standings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SoccerStandingsResponse _$SoccerStandingsResponseFromJson(
    Map<String, dynamic> json) {
  return _SoccerStandingsResponse.fromJson(json);
}

/// @nodoc
mixin _$SoccerStandingsResponse {
  int? get success => throw _privateConstructorUsedError;
  SoccerStandingsResult? get result => throw _privateConstructorUsedError;

  /// Serializes this SoccerStandingsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerStandingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerStandingsResponseCopyWith<SoccerStandingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerStandingsResponseCopyWith<$Res> {
  factory $SoccerStandingsResponseCopyWith(SoccerStandingsResponse value,
          $Res Function(SoccerStandingsResponse) then) =
      _$SoccerStandingsResponseCopyWithImpl<$Res, SoccerStandingsResponse>;
  @useResult
  $Res call({int? success, SoccerStandingsResult? result});

  $SoccerStandingsResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$SoccerStandingsResponseCopyWithImpl<$Res,
        $Val extends SoccerStandingsResponse>
    implements $SoccerStandingsResponseCopyWith<$Res> {
  _$SoccerStandingsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerStandingsResponse
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
              as SoccerStandingsResult?,
    ) as $Val);
  }

  /// Create a copy of SoccerStandingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoccerStandingsResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $SoccerStandingsResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SoccerStandingsResponseImplCopyWith<$Res>
    implements $SoccerStandingsResponseCopyWith<$Res> {
  factory _$$SoccerStandingsResponseImplCopyWith(
          _$SoccerStandingsResponseImpl value,
          $Res Function(_$SoccerStandingsResponseImpl) then) =
      __$$SoccerStandingsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? success, SoccerStandingsResult? result});

  @override
  $SoccerStandingsResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$SoccerStandingsResponseImplCopyWithImpl<$Res>
    extends _$SoccerStandingsResponseCopyWithImpl<$Res,
        _$SoccerStandingsResponseImpl>
    implements _$$SoccerStandingsResponseImplCopyWith<$Res> {
  __$$SoccerStandingsResponseImplCopyWithImpl(
      _$SoccerStandingsResponseImpl _value,
      $Res Function(_$SoccerStandingsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerStandingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SoccerStandingsResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SoccerStandingsResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerStandingsResponseImpl implements _SoccerStandingsResponse {
  const _$SoccerStandingsResponseImpl({this.success, this.result});

  factory _$SoccerStandingsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerStandingsResponseImplFromJson(json);

  @override
  final int? success;
  @override
  final SoccerStandingsResult? result;

  @override
  String toString() {
    return 'SoccerStandingsResponse(success: $success, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerStandingsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, result);

  /// Create a copy of SoccerStandingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerStandingsResponseImplCopyWith<_$SoccerStandingsResponseImpl>
      get copyWith => __$$SoccerStandingsResponseImplCopyWithImpl<
          _$SoccerStandingsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerStandingsResponseImplToJson(
      this,
    );
  }
}

abstract class _SoccerStandingsResponse implements SoccerStandingsResponse {
  const factory _SoccerStandingsResponse(
      {final int? success,
      final SoccerStandingsResult? result}) = _$SoccerStandingsResponseImpl;

  factory _SoccerStandingsResponse.fromJson(Map<String, dynamic> json) =
      _$SoccerStandingsResponseImpl.fromJson;

  @override
  int? get success;
  @override
  SoccerStandingsResult? get result;

  /// Create a copy of SoccerStandingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerStandingsResponseImplCopyWith<_$SoccerStandingsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SoccerStandingsResult _$SoccerStandingsResultFromJson(
    Map<String, dynamic> json) {
  return _SoccerStandingsResult.fromJson(json);
}

/// @nodoc
mixin _$SoccerStandingsResult {
  List<SoccerStanding>? get total => throw _privateConstructorUsedError;
  List<SoccerStanding>? get home => throw _privateConstructorUsedError;
  List<SoccerStanding>? get away => throw _privateConstructorUsedError;

  /// Serializes this SoccerStandingsResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerStandingsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerStandingsResultCopyWith<SoccerStandingsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerStandingsResultCopyWith<$Res> {
  factory $SoccerStandingsResultCopyWith(SoccerStandingsResult value,
          $Res Function(SoccerStandingsResult) then) =
      _$SoccerStandingsResultCopyWithImpl<$Res, SoccerStandingsResult>;
  @useResult
  $Res call(
      {List<SoccerStanding>? total,
      List<SoccerStanding>? home,
      List<SoccerStanding>? away});
}

/// @nodoc
class _$SoccerStandingsResultCopyWithImpl<$Res,
        $Val extends SoccerStandingsResult>
    implements $SoccerStandingsResultCopyWith<$Res> {
  _$SoccerStandingsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerStandingsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as List<SoccerStanding>?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as List<SoccerStanding>?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as List<SoccerStanding>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerStandingsResultImplCopyWith<$Res>
    implements $SoccerStandingsResultCopyWith<$Res> {
  factory _$$SoccerStandingsResultImplCopyWith(
          _$SoccerStandingsResultImpl value,
          $Res Function(_$SoccerStandingsResultImpl) then) =
      __$$SoccerStandingsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SoccerStanding>? total,
      List<SoccerStanding>? home,
      List<SoccerStanding>? away});
}

/// @nodoc
class __$$SoccerStandingsResultImplCopyWithImpl<$Res>
    extends _$SoccerStandingsResultCopyWithImpl<$Res,
        _$SoccerStandingsResultImpl>
    implements _$$SoccerStandingsResultImplCopyWith<$Res> {
  __$$SoccerStandingsResultImplCopyWithImpl(_$SoccerStandingsResultImpl _value,
      $Res Function(_$SoccerStandingsResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerStandingsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_$SoccerStandingsResultImpl(
      total: freezed == total
          ? _value._total
          : total // ignore: cast_nullable_to_non_nullable
              as List<SoccerStanding>?,
      home: freezed == home
          ? _value._home
          : home // ignore: cast_nullable_to_non_nullable
              as List<SoccerStanding>?,
      away: freezed == away
          ? _value._away
          : away // ignore: cast_nullable_to_non_nullable
              as List<SoccerStanding>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerStandingsResultImpl implements _SoccerStandingsResult {
  const _$SoccerStandingsResultImpl(
      {final List<SoccerStanding>? total,
      final List<SoccerStanding>? home,
      final List<SoccerStanding>? away})
      : _total = total,
        _home = home,
        _away = away;

  factory _$SoccerStandingsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerStandingsResultImplFromJson(json);

  final List<SoccerStanding>? _total;
  @override
  List<SoccerStanding>? get total {
    final value = _total;
    if (value == null) return null;
    if (_total is EqualUnmodifiableListView) return _total;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SoccerStanding>? _home;
  @override
  List<SoccerStanding>? get home {
    final value = _home;
    if (value == null) return null;
    if (_home is EqualUnmodifiableListView) return _home;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SoccerStanding>? _away;
  @override
  List<SoccerStanding>? get away {
    final value = _away;
    if (value == null) return null;
    if (_away is EqualUnmodifiableListView) return _away;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SoccerStandingsResult(total: $total, home: $home, away: $away)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerStandingsResultImpl &&
            const DeepCollectionEquality().equals(other._total, _total) &&
            const DeepCollectionEquality().equals(other._home, _home) &&
            const DeepCollectionEquality().equals(other._away, _away));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_total),
      const DeepCollectionEquality().hash(_home),
      const DeepCollectionEquality().hash(_away));

  /// Create a copy of SoccerStandingsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerStandingsResultImplCopyWith<_$SoccerStandingsResultImpl>
      get copyWith => __$$SoccerStandingsResultImplCopyWithImpl<
          _$SoccerStandingsResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerStandingsResultImplToJson(
      this,
    );
  }
}

abstract class _SoccerStandingsResult implements SoccerStandingsResult {
  const factory _SoccerStandingsResult(
      {final List<SoccerStanding>? total,
      final List<SoccerStanding>? home,
      final List<SoccerStanding>? away}) = _$SoccerStandingsResultImpl;

  factory _SoccerStandingsResult.fromJson(Map<String, dynamic> json) =
      _$SoccerStandingsResultImpl.fromJson;

  @override
  List<SoccerStanding>? get total;
  @override
  List<SoccerStanding>? get home;
  @override
  List<SoccerStanding>? get away;

  /// Create a copy of SoccerStandingsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerStandingsResultImplCopyWith<_$SoccerStandingsResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SoccerStanding _$SoccerStandingFromJson(Map<String, dynamic> json) {
  return _SoccerStanding.fromJson(json);
}

/// @nodoc
mixin _$SoccerStanding {
  int get standing_place => throw _privateConstructorUsedError;
  String? get standing_place_type => throw _privateConstructorUsedError;
  String get standing_team => throw _privateConstructorUsedError;
  int get standing_P => throw _privateConstructorUsedError;
  int get standing_W => throw _privateConstructorUsedError;
  int get standing_D => throw _privateConstructorUsedError;
  int get standing_L => throw _privateConstructorUsedError;
  int get standing_F => throw _privateConstructorUsedError;
  int get standing_A => throw _privateConstructorUsedError;
  int get standing_GD => throw _privateConstructorUsedError;
  int get standing_PTS => throw _privateConstructorUsedError;
  int get team_key => throw _privateConstructorUsedError;
  int get league_key => throw _privateConstructorUsedError;
  String get league_season => throw _privateConstructorUsedError;
  String? get league_round => throw _privateConstructorUsedError;
  String get standing_updated => throw _privateConstructorUsedError;
  int get fk_stage_key => throw _privateConstructorUsedError;
  String get stage_name => throw _privateConstructorUsedError;
  String? get team_logo => throw _privateConstructorUsedError;
  int get standing_LP => throw _privateConstructorUsedError;
  int get standing_WP => throw _privateConstructorUsedError;

  /// Serializes this SoccerStanding to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerStanding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerStandingCopyWith<SoccerStanding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerStandingCopyWith<$Res> {
  factory $SoccerStandingCopyWith(
          SoccerStanding value, $Res Function(SoccerStanding) then) =
      _$SoccerStandingCopyWithImpl<$Res, SoccerStanding>;
  @useResult
  $Res call(
      {int standing_place,
      String? standing_place_type,
      String standing_team,
      int standing_P,
      int standing_W,
      int standing_D,
      int standing_L,
      int standing_F,
      int standing_A,
      int standing_GD,
      int standing_PTS,
      int team_key,
      int league_key,
      String league_season,
      String? league_round,
      String standing_updated,
      int fk_stage_key,
      String stage_name,
      String? team_logo,
      int standing_LP,
      int standing_WP});
}

/// @nodoc
class _$SoccerStandingCopyWithImpl<$Res, $Val extends SoccerStanding>
    implements $SoccerStandingCopyWith<$Res> {
  _$SoccerStandingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerStanding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standing_place = null,
    Object? standing_place_type = freezed,
    Object? standing_team = null,
    Object? standing_P = null,
    Object? standing_W = null,
    Object? standing_D = null,
    Object? standing_L = null,
    Object? standing_F = null,
    Object? standing_A = null,
    Object? standing_GD = null,
    Object? standing_PTS = null,
    Object? team_key = null,
    Object? league_key = null,
    Object? league_season = null,
    Object? league_round = freezed,
    Object? standing_updated = null,
    Object? fk_stage_key = null,
    Object? stage_name = null,
    Object? team_logo = freezed,
    Object? standing_LP = null,
    Object? standing_WP = null,
  }) {
    return _then(_value.copyWith(
      standing_place: null == standing_place
          ? _value.standing_place
          : standing_place // ignore: cast_nullable_to_non_nullable
              as int,
      standing_place_type: freezed == standing_place_type
          ? _value.standing_place_type
          : standing_place_type // ignore: cast_nullable_to_non_nullable
              as String?,
      standing_team: null == standing_team
          ? _value.standing_team
          : standing_team // ignore: cast_nullable_to_non_nullable
              as String,
      standing_P: null == standing_P
          ? _value.standing_P
          : standing_P // ignore: cast_nullable_to_non_nullable
              as int,
      standing_W: null == standing_W
          ? _value.standing_W
          : standing_W // ignore: cast_nullable_to_non_nullable
              as int,
      standing_D: null == standing_D
          ? _value.standing_D
          : standing_D // ignore: cast_nullable_to_non_nullable
              as int,
      standing_L: null == standing_L
          ? _value.standing_L
          : standing_L // ignore: cast_nullable_to_non_nullable
              as int,
      standing_F: null == standing_F
          ? _value.standing_F
          : standing_F // ignore: cast_nullable_to_non_nullable
              as int,
      standing_A: null == standing_A
          ? _value.standing_A
          : standing_A // ignore: cast_nullable_to_non_nullable
              as int,
      standing_GD: null == standing_GD
          ? _value.standing_GD
          : standing_GD // ignore: cast_nullable_to_non_nullable
              as int,
      standing_PTS: null == standing_PTS
          ? _value.standing_PTS
          : standing_PTS // ignore: cast_nullable_to_non_nullable
              as int,
      team_key: null == team_key
          ? _value.team_key
          : team_key // ignore: cast_nullable_to_non_nullable
              as int,
      league_key: null == league_key
          ? _value.league_key
          : league_key // ignore: cast_nullable_to_non_nullable
              as int,
      league_season: null == league_season
          ? _value.league_season
          : league_season // ignore: cast_nullable_to_non_nullable
              as String,
      league_round: freezed == league_round
          ? _value.league_round
          : league_round // ignore: cast_nullable_to_non_nullable
              as String?,
      standing_updated: null == standing_updated
          ? _value.standing_updated
          : standing_updated // ignore: cast_nullable_to_non_nullable
              as String,
      fk_stage_key: null == fk_stage_key
          ? _value.fk_stage_key
          : fk_stage_key // ignore: cast_nullable_to_non_nullable
              as int,
      stage_name: null == stage_name
          ? _value.stage_name
          : stage_name // ignore: cast_nullable_to_non_nullable
              as String,
      team_logo: freezed == team_logo
          ? _value.team_logo
          : team_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      standing_LP: null == standing_LP
          ? _value.standing_LP
          : standing_LP // ignore: cast_nullable_to_non_nullable
              as int,
      standing_WP: null == standing_WP
          ? _value.standing_WP
          : standing_WP // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerStandingImplCopyWith<$Res>
    implements $SoccerStandingCopyWith<$Res> {
  factory _$$SoccerStandingImplCopyWith(_$SoccerStandingImpl value,
          $Res Function(_$SoccerStandingImpl) then) =
      __$$SoccerStandingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int standing_place,
      String? standing_place_type,
      String standing_team,
      int standing_P,
      int standing_W,
      int standing_D,
      int standing_L,
      int standing_F,
      int standing_A,
      int standing_GD,
      int standing_PTS,
      int team_key,
      int league_key,
      String league_season,
      String? league_round,
      String standing_updated,
      int fk_stage_key,
      String stage_name,
      String? team_logo,
      int standing_LP,
      int standing_WP});
}

/// @nodoc
class __$$SoccerStandingImplCopyWithImpl<$Res>
    extends _$SoccerStandingCopyWithImpl<$Res, _$SoccerStandingImpl>
    implements _$$SoccerStandingImplCopyWith<$Res> {
  __$$SoccerStandingImplCopyWithImpl(
      _$SoccerStandingImpl _value, $Res Function(_$SoccerStandingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerStanding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standing_place = null,
    Object? standing_place_type = freezed,
    Object? standing_team = null,
    Object? standing_P = null,
    Object? standing_W = null,
    Object? standing_D = null,
    Object? standing_L = null,
    Object? standing_F = null,
    Object? standing_A = null,
    Object? standing_GD = null,
    Object? standing_PTS = null,
    Object? team_key = null,
    Object? league_key = null,
    Object? league_season = null,
    Object? league_round = freezed,
    Object? standing_updated = null,
    Object? fk_stage_key = null,
    Object? stage_name = null,
    Object? team_logo = freezed,
    Object? standing_LP = null,
    Object? standing_WP = null,
  }) {
    return _then(_$SoccerStandingImpl(
      standing_place: null == standing_place
          ? _value.standing_place
          : standing_place // ignore: cast_nullable_to_non_nullable
              as int,
      standing_place_type: freezed == standing_place_type
          ? _value.standing_place_type
          : standing_place_type // ignore: cast_nullable_to_non_nullable
              as String?,
      standing_team: null == standing_team
          ? _value.standing_team
          : standing_team // ignore: cast_nullable_to_non_nullable
              as String,
      standing_P: null == standing_P
          ? _value.standing_P
          : standing_P // ignore: cast_nullable_to_non_nullable
              as int,
      standing_W: null == standing_W
          ? _value.standing_W
          : standing_W // ignore: cast_nullable_to_non_nullable
              as int,
      standing_D: null == standing_D
          ? _value.standing_D
          : standing_D // ignore: cast_nullable_to_non_nullable
              as int,
      standing_L: null == standing_L
          ? _value.standing_L
          : standing_L // ignore: cast_nullable_to_non_nullable
              as int,
      standing_F: null == standing_F
          ? _value.standing_F
          : standing_F // ignore: cast_nullable_to_non_nullable
              as int,
      standing_A: null == standing_A
          ? _value.standing_A
          : standing_A // ignore: cast_nullable_to_non_nullable
              as int,
      standing_GD: null == standing_GD
          ? _value.standing_GD
          : standing_GD // ignore: cast_nullable_to_non_nullable
              as int,
      standing_PTS: null == standing_PTS
          ? _value.standing_PTS
          : standing_PTS // ignore: cast_nullable_to_non_nullable
              as int,
      team_key: null == team_key
          ? _value.team_key
          : team_key // ignore: cast_nullable_to_non_nullable
              as int,
      league_key: null == league_key
          ? _value.league_key
          : league_key // ignore: cast_nullable_to_non_nullable
              as int,
      league_season: null == league_season
          ? _value.league_season
          : league_season // ignore: cast_nullable_to_non_nullable
              as String,
      league_round: freezed == league_round
          ? _value.league_round
          : league_round // ignore: cast_nullable_to_non_nullable
              as String?,
      standing_updated: null == standing_updated
          ? _value.standing_updated
          : standing_updated // ignore: cast_nullable_to_non_nullable
              as String,
      fk_stage_key: null == fk_stage_key
          ? _value.fk_stage_key
          : fk_stage_key // ignore: cast_nullable_to_non_nullable
              as int,
      stage_name: null == stage_name
          ? _value.stage_name
          : stage_name // ignore: cast_nullable_to_non_nullable
              as String,
      team_logo: freezed == team_logo
          ? _value.team_logo
          : team_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      standing_LP: null == standing_LP
          ? _value.standing_LP
          : standing_LP // ignore: cast_nullable_to_non_nullable
              as int,
      standing_WP: null == standing_WP
          ? _value.standing_WP
          : standing_WP // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerStandingImpl implements _SoccerStanding {
  const _$SoccerStandingImpl(
      {required this.standing_place,
      this.standing_place_type,
      required this.standing_team,
      required this.standing_P,
      required this.standing_W,
      required this.standing_D,
      required this.standing_L,
      required this.standing_F,
      required this.standing_A,
      required this.standing_GD,
      required this.standing_PTS,
      required this.team_key,
      required this.league_key,
      required this.league_season,
      this.league_round,
      required this.standing_updated,
      required this.fk_stage_key,
      required this.stage_name,
      this.team_logo,
      required this.standing_LP,
      required this.standing_WP});

  factory _$SoccerStandingImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerStandingImplFromJson(json);

  @override
  final int standing_place;
  @override
  final String? standing_place_type;
  @override
  final String standing_team;
  @override
  final int standing_P;
  @override
  final int standing_W;
  @override
  final int standing_D;
  @override
  final int standing_L;
  @override
  final int standing_F;
  @override
  final int standing_A;
  @override
  final int standing_GD;
  @override
  final int standing_PTS;
  @override
  final int team_key;
  @override
  final int league_key;
  @override
  final String league_season;
  @override
  final String? league_round;
  @override
  final String standing_updated;
  @override
  final int fk_stage_key;
  @override
  final String stage_name;
  @override
  final String? team_logo;
  @override
  final int standing_LP;
  @override
  final int standing_WP;

  @override
  String toString() {
    return 'SoccerStanding(standing_place: $standing_place, standing_place_type: $standing_place_type, standing_team: $standing_team, standing_P: $standing_P, standing_W: $standing_W, standing_D: $standing_D, standing_L: $standing_L, standing_F: $standing_F, standing_A: $standing_A, standing_GD: $standing_GD, standing_PTS: $standing_PTS, team_key: $team_key, league_key: $league_key, league_season: $league_season, league_round: $league_round, standing_updated: $standing_updated, fk_stage_key: $fk_stage_key, stage_name: $stage_name, team_logo: $team_logo, standing_LP: $standing_LP, standing_WP: $standing_WP)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerStandingImpl &&
            (identical(other.standing_place, standing_place) ||
                other.standing_place == standing_place) &&
            (identical(other.standing_place_type, standing_place_type) ||
                other.standing_place_type == standing_place_type) &&
            (identical(other.standing_team, standing_team) ||
                other.standing_team == standing_team) &&
            (identical(other.standing_P, standing_P) ||
                other.standing_P == standing_P) &&
            (identical(other.standing_W, standing_W) ||
                other.standing_W == standing_W) &&
            (identical(other.standing_D, standing_D) ||
                other.standing_D == standing_D) &&
            (identical(other.standing_L, standing_L) ||
                other.standing_L == standing_L) &&
            (identical(other.standing_F, standing_F) ||
                other.standing_F == standing_F) &&
            (identical(other.standing_A, standing_A) ||
                other.standing_A == standing_A) &&
            (identical(other.standing_GD, standing_GD) ||
                other.standing_GD == standing_GD) &&
            (identical(other.standing_PTS, standing_PTS) ||
                other.standing_PTS == standing_PTS) &&
            (identical(other.team_key, team_key) ||
                other.team_key == team_key) &&
            (identical(other.league_key, league_key) ||
                other.league_key == league_key) &&
            (identical(other.league_season, league_season) ||
                other.league_season == league_season) &&
            (identical(other.league_round, league_round) ||
                other.league_round == league_round) &&
            (identical(other.standing_updated, standing_updated) ||
                other.standing_updated == standing_updated) &&
            (identical(other.fk_stage_key, fk_stage_key) ||
                other.fk_stage_key == fk_stage_key) &&
            (identical(other.stage_name, stage_name) ||
                other.stage_name == stage_name) &&
            (identical(other.team_logo, team_logo) ||
                other.team_logo == team_logo) &&
            (identical(other.standing_LP, standing_LP) ||
                other.standing_LP == standing_LP) &&
            (identical(other.standing_WP, standing_WP) ||
                other.standing_WP == standing_WP));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        standing_place,
        standing_place_type,
        standing_team,
        standing_P,
        standing_W,
        standing_D,
        standing_L,
        standing_F,
        standing_A,
        standing_GD,
        standing_PTS,
        team_key,
        league_key,
        league_season,
        league_round,
        standing_updated,
        fk_stage_key,
        stage_name,
        team_logo,
        standing_LP,
        standing_WP
      ]);

  /// Create a copy of SoccerStanding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerStandingImplCopyWith<_$SoccerStandingImpl> get copyWith =>
      __$$SoccerStandingImplCopyWithImpl<_$SoccerStandingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerStandingImplToJson(
      this,
    );
  }
}

abstract class _SoccerStanding implements SoccerStanding {
  const factory _SoccerStanding(
      {required final int standing_place,
      final String? standing_place_type,
      required final String standing_team,
      required final int standing_P,
      required final int standing_W,
      required final int standing_D,
      required final int standing_L,
      required final int standing_F,
      required final int standing_A,
      required final int standing_GD,
      required final int standing_PTS,
      required final int team_key,
      required final int league_key,
      required final String league_season,
      final String? league_round,
      required final String standing_updated,
      required final int fk_stage_key,
      required final String stage_name,
      final String? team_logo,
      required final int standing_LP,
      required final int standing_WP}) = _$SoccerStandingImpl;

  factory _SoccerStanding.fromJson(Map<String, dynamic> json) =
      _$SoccerStandingImpl.fromJson;

  @override
  int get standing_place;
  @override
  String? get standing_place_type;
  @override
  String get standing_team;
  @override
  int get standing_P;
  @override
  int get standing_W;
  @override
  int get standing_D;
  @override
  int get standing_L;
  @override
  int get standing_F;
  @override
  int get standing_A;
  @override
  int get standing_GD;
  @override
  int get standing_PTS;
  @override
  int get team_key;
  @override
  int get league_key;
  @override
  String get league_season;
  @override
  String? get league_round;
  @override
  String get standing_updated;
  @override
  int get fk_stage_key;
  @override
  String get stage_name;
  @override
  String? get team_logo;
  @override
  int get standing_LP;
  @override
  int get standing_WP;

  /// Create a copy of SoccerStanding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerStandingImplCopyWith<_$SoccerStandingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
