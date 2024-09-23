import 'package:freezed_annotation/freezed_annotation.dart';

part 'soccer_standings_model.freezed.dart';
part 'soccer_standings_model.g.dart';

@freezed
class SoccerStandingsResponse with _$SoccerStandingsResponse {
  const factory SoccerStandingsResponse({
     int? success,
     SoccerStandingsResult? result,
  }) = _SoccerStandingsResponse;

  factory SoccerStandingsResponse.fromJson(Map<String, dynamic> json) =>
      _$SoccerStandingsResponseFromJson(json);
}

@freezed
class SoccerStandingsResult with _$SoccerStandingsResult {
  const factory SoccerStandingsResult({
     List<SoccerStanding>? total,
     List<SoccerStanding>? home,
    List<SoccerStanding>? away,
  }) = _SoccerStandingsResult;

  factory SoccerStandingsResult.fromJson(Map<String, dynamic> json) =>
      _$SoccerStandingsResultFromJson(json);
}

@freezed
class SoccerStanding with _$SoccerStanding {
  const factory SoccerStanding({
    required int standing_place,
    String? standing_place_type,
    required String standing_team,
    required int standing_P,
    required int standing_W,
    required int standing_D,
    required int standing_L,
    required int standing_F,
    required int standing_A,
    required int standing_GD,
    required int standing_PTS,
    required int team_key,
    required int league_key,
    required String league_season,
    String? league_round,
    required String standing_updated,
    required int fk_stage_key,
    required String stage_name,
    String? team_logo,
    required int standing_LP,
    required int standing_WP,
  }) = _SoccerStanding;

  factory SoccerStanding.fromJson(Map<String, dynamic> json) =>
      _$SoccerStandingFromJson(json);
}
