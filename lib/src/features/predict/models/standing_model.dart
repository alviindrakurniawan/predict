import 'package:freezed_annotation/freezed_annotation.dart';

part 'standing_model.freezed.dart';
part 'standing_model.g.dart';

@freezed
class StandingModel with _$StandingModel {
  const factory StandingModel({
    @JsonKey(name: 'standing_place') required int standingPlace,
    @JsonKey(name: 'standing_place_type') String? standingPlaceType,
    @JsonKey(name: 'standing_team') required String standingTeam,
    @JsonKey(name: 'standing_P') required int standingP,
    @JsonKey(name: 'standing_W') required int standingW,
    @JsonKey(name: 'standing_D') required int standingD,
    @JsonKey(name: 'standing_L') required int standingL,
    @JsonKey(name: 'standing_F') required int standingF,
    @JsonKey(name: 'standing_A') required int standingA,
    @JsonKey(name: 'standing_GD') required int standingGD,
    @JsonKey(name: 'standing_PTS') required int standingPTS,
    @JsonKey(name: 'team_key') required int teamKey,
    @JsonKey(name: 'league_key') required int leagueKey,
    @JsonKey(name: 'league_season') required String leagueSeason,
    @JsonKey(name: 'league_round') required String leagueRound,
    @JsonKey(name: 'standing_updated') required String standingUpdated,
    @JsonKey(name: 'fk_stage_key') required int fkStageKey,
    @JsonKey(name: 'stage_name') required String stageName,
    @JsonKey(name: 'team_logo')  String? teamLogo,
    @JsonKey(name: 'standing_LP') required int standingLP,
    @JsonKey(name: 'standing_WP') required int standingWP,
  }) = _StandingModel;

  factory StandingModel.fromJson(Map<String, dynamic> json) =>
      _$StandingModelFromJson(json);
}
