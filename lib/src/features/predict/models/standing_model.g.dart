// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StandingModelImpl _$$StandingModelImplFromJson(Map<String, dynamic> json) =>
    _$StandingModelImpl(
      standingPlace: (json['standing_place'] as num).toInt(),
      standingPlaceType: json['standing_place_type'] as String?,
      standingTeam: json['standing_team'] as String,
      standingP: (json['standing_P'] as num).toInt(),
      standingW: (json['standing_W'] as num).toInt(),
      standingD: (json['standing_D'] as num).toInt(),
      standingL: (json['standing_L'] as num).toInt(),
      standingF: (json['standing_F'] as num).toInt(),
      standingA: (json['standing_A'] as num).toInt(),
      standingGD: (json['standing_GD'] as num).toInt(),
      standingPTS: (json['standing_PTS'] as num).toInt(),
      teamKey: (json['team_key'] as num).toInt(),
      leagueKey: (json['league_key'] as num).toInt(),
      leagueSeason: json['league_season'] as String,
      leagueRound: json['league_round'] as String,
      standingUpdated: json['standing_updated'] as String,
      fkStageKey: (json['fk_stage_key'] as num).toInt(),
      stageName: json['stage_name'] as String,
      teamLogo: json['team_logo'] as String?,
      standingLP: (json['standing_LP'] as num).toInt(),
      standingWP: (json['standing_WP'] as num).toInt(),
    );

Map<String, dynamic> _$$StandingModelImplToJson(_$StandingModelImpl instance) =>
    <String, dynamic>{
      'standing_place': instance.standingPlace,
      'standing_place_type': instance.standingPlaceType,
      'standing_team': instance.standingTeam,
      'standing_P': instance.standingP,
      'standing_W': instance.standingW,
      'standing_D': instance.standingD,
      'standing_L': instance.standingL,
      'standing_F': instance.standingF,
      'standing_A': instance.standingA,
      'standing_GD': instance.standingGD,
      'standing_PTS': instance.standingPTS,
      'team_key': instance.teamKey,
      'league_key': instance.leagueKey,
      'league_season': instance.leagueSeason,
      'league_round': instance.leagueRound,
      'standing_updated': instance.standingUpdated,
      'fk_stage_key': instance.fkStageKey,
      'stage_name': instance.stageName,
      'team_logo': instance.teamLogo,
      'standing_LP': instance.standingLP,
      'standing_WP': instance.standingWP,
    };
