import 'package:freezed_annotation/freezed_annotation.dart';

part 'soccer_fixture.freezed.dart';
part 'soccer_fixture.g.dart';

@freezed
class SoccerFixtureResponse with _$SoccerFixtureResponse {
  const factory SoccerFixtureResponse({
    int? success,
    List<SoccerFixtureResult>? result,
  }) = _SoccerFixtureResponse;

  factory SoccerFixtureResponse.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixtureResponseFromJson(json);
}

@freezed
class SoccerFixtureResult with _$SoccerFixtureResult {
  const factory SoccerFixtureResult({
    int? event_key,             // Changed from String? to int?
    String? event_date,
    String? event_time,
    String? event_home_team,
    int? home_team_key,         // Changed from String? to int?
    String? event_away_team,
    int? away_team_key,         // Changed from String? to int?
    String? event_halftime_result,
    String? event_final_result,
    String? event_ft_result,
    String? event_penalty_result,
    String? event_status,
    String? country_name,
    String? league_name,
    int? league_key,            // Changed from String? to int?
    String? league_round,
    String? league_season,
    String? event_live,
    String? event_stadium,
    String? event_referee,
    String? home_team_logo,
    String? away_team_logo,
    int? event_country_key,     // Changed from String? to int?
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
    List<SoccerFixtureStatistic>? statistics,
  }) = _SoccerFixtureResult;

  factory SoccerFixtureResult.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixtureResultFromJson(json);
}
@freezed
class SoccerFixtureGoalscorer with _$SoccerFixtureGoalscorer {
  const factory SoccerFixtureGoalscorer({
    String? time,
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
    String? info_time,
  }) = _SoccerFixtureGoalscorer;

  factory SoccerFixtureGoalscorer.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixtureGoalscorerFromJson(json);
}

@freezed
class SoccerFixtureSubstitute with _$SoccerFixtureSubstitute {
  const factory SoccerFixtureSubstitute({
    String? time,
    dynamic home_scorer,
    dynamic away_scorer,
    String? score,
  }) = _SoccerFixtureSubstitute;

  factory SoccerFixtureSubstitute.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixtureSubstituteFromJson({
        ...json,
        'home_scorer': _parseScorer(json['home_scorer']),
        'away_scorer': _parseScorer(json['away_scorer']),
      });
}

dynamic _parseScorer(dynamic scorerData) {
  if (scorerData is Map<String, dynamic>) {
    return SoccerFixtureScorer.fromJson(scorerData);
  } else if (scorerData is List) {
    return scorerData;
  }

  return null;
}


@freezed
class SoccerFixtureScorer with _$SoccerFixtureScorer {
  const factory SoccerFixtureScorer({
    @JsonKey(name: 'in') String? inPlayer,
    @JsonKey(name: 'out') String? outPlayer,
  }) = _SoccerFixtureScorer;

  factory SoccerFixtureScorer.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixtureScorerFromJson(json);
}

@freezed
class SoccerFixtureCard with _$SoccerFixtureCard {
  const factory SoccerFixtureCard({
    String? time,
    String? home_fault,
    String? card,
    String? away_fault,
  }) = _SoccerFixtureCard;

  factory SoccerFixtureCard.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixtureCardFromJson(json);
}

@freezed
class SoccerFixtureLineups with _$SoccerFixtureLineups {
  const factory SoccerFixtureLineups({
    SoccerFixtureTeamLineup? home_team,
    SoccerFixtureTeamLineup? away_team,
  }) = _SoccerFixtureLineups;

  factory SoccerFixtureLineups.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixtureLineupsFromJson(json);
}

@freezed
class SoccerFixtureTeamLineup with _$SoccerFixtureTeamLineup {
  const factory SoccerFixtureTeamLineup({
    List<SoccerFixturePlayer>? starting_lineups,
    List<SoccerFixturePlayer>? substitutes,
    List<SoccerFixtureCoach>? coaches,
    List<dynamic>? missing_players,
  }) = _SoccerFixtureTeamLineup;

  factory SoccerFixtureTeamLineup.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixtureTeamLineupFromJson(json);
}

@freezed
class SoccerFixturePlayer with _$SoccerFixturePlayer {
  const factory SoccerFixturePlayer({
    String? player,
    int? player_number,
    int? player_position,
    String? player_country,
    int? player_key,
  }) = _SoccerFixturePlayer;

  factory SoccerFixturePlayer.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixturePlayerFromJson(json);
}

@freezed
class SoccerFixtureCoach with _$SoccerFixtureCoach {
  const factory SoccerFixtureCoach({
    String? coache,
    String? coache_country,
  }) = _SoccerFixtureCoach;

  factory SoccerFixtureCoach.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixtureCoachFromJson(json);
}

@freezed
class SoccerFixtureStatistic with _$SoccerFixtureStatistic {
  const factory SoccerFixtureStatistic({
    String? type,
    String? home,
    String? away,
  }) = _SoccerFixtureStatistic;

  factory SoccerFixtureStatistic.fromJson(Map<String, dynamic> json) =>
      _$SoccerFixtureStatisticFromJson(json);
}
