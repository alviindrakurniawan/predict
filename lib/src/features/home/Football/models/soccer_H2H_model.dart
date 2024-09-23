import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';

part 'soccer_H2H_model.freezed.dart';
part 'soccer_H2H_model.g.dart';

@freezed
class SoccerH2HModel with _$SoccerH2HModel {
  const factory SoccerH2HModel({
     int? success,
     Result? result,
  }) = _SoccerH2HModel;

  factory SoccerH2HModel.fromJson(Map<String, dynamic> json) => _$SoccerH2HModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    List<SoccerFixtureResult>? H2H,
     List<SoccerFixtureResult>? firstTeamResults,
     List<SoccerFixtureResult>? secondTeamResults,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
//
// @freezed
// class H2H with _$H2H {
//   const factory H2H({
//     required int event_key,
//     required String event_date,
//     required String event_time,
//     required String event_home_team,
//     required int home_team_key,
//     required String event_away_team,
//     required int away_team_key,
//     required String home_team_logo,
//     required String away_team_logo,
//     required String event_halftime_result,
//     required String event_final_result,
//     required String event_status,
//     required String country_name,
//     required String league_name,
//     required int league_key,
//     required String league_round,
//     required String league_season,
//     required String event_live,
//     required int event_country_key,
//   }) = _H2H;
//
//   factory H2H.fromJson(Map<String, dynamic> json) => _$H2HFromJson(json);
// }
//
// @freezed
// class MatchResult with _$MatchResult {
//   const factory MatchResult({
//     required int event_key,
//     required String event_date,
//     required String event_time,
//     required String event_home_team,
//     required int home_team_key,
//     required String event_away_team,
//     required int away_team_key,
//     required String home_team_logo,
//     required String away_team_logo,
//     required String event_halftime_result,
//     required String event_final_result,
//     required String event_status,
//     required String country_name,
//     required String league_name,
//     required int league_key,
//     required String league_round,
//     required String league_season,
//     required String event_live,
//     required int event_country_key,
//   }) = _MatchResult;
//
//   factory MatchResult.fromJson(Map<String, dynamic> json) => _$MatchResultFromJson(json);
// }
