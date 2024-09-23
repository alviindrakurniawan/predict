// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer_standings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SoccerStandingsResponseImpl _$$SoccerStandingsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerStandingsResponseImpl(
      success: (json['success'] as num?)?.toInt(),
      result: json['result'] == null
          ? null
          : SoccerStandingsResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SoccerStandingsResponseImplToJson(
        _$SoccerStandingsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
    };

_$SoccerStandingsResultImpl _$$SoccerStandingsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerStandingsResultImpl(
      total: (json['total'] as List<dynamic>?)
          ?.map((e) => SoccerStanding.fromJson(e as Map<String, dynamic>))
          .toList(),
      home: (json['home'] as List<dynamic>?)
          ?.map((e) => SoccerStanding.fromJson(e as Map<String, dynamic>))
          .toList(),
      away: (json['away'] as List<dynamic>?)
          ?.map((e) => SoccerStanding.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SoccerStandingsResultImplToJson(
        _$SoccerStandingsResultImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'home': instance.home,
      'away': instance.away,
    };

_$SoccerStandingImpl _$$SoccerStandingImplFromJson(Map<String, dynamic> json) =>
    _$SoccerStandingImpl(
      standing_place: (json['standing_place'] as num).toInt(),
      standing_place_type: json['standing_place_type'] as String?,
      standing_team: json['standing_team'] as String,
      standing_P: (json['standing_P'] as num).toInt(),
      standing_W: (json['standing_W'] as num).toInt(),
      standing_D: (json['standing_D'] as num).toInt(),
      standing_L: (json['standing_L'] as num).toInt(),
      standing_F: (json['standing_F'] as num).toInt(),
      standing_A: (json['standing_A'] as num).toInt(),
      standing_GD: (json['standing_GD'] as num).toInt(),
      standing_PTS: (json['standing_PTS'] as num).toInt(),
      team_key: (json['team_key'] as num).toInt(),
      league_key: (json['league_key'] as num).toInt(),
      league_season: json['league_season'] as String,
      league_round: json['league_round'] as String?,
      standing_updated: json['standing_updated'] as String,
      fk_stage_key: (json['fk_stage_key'] as num).toInt(),
      stage_name: json['stage_name'] as String,
      team_logo: json['team_logo'] as String?,
      standing_LP: (json['standing_LP'] as num).toInt(),
      standing_WP: (json['standing_WP'] as num).toInt(),
    );

Map<String, dynamic> _$$SoccerStandingImplToJson(
        _$SoccerStandingImpl instance) =>
    <String, dynamic>{
      'standing_place': instance.standing_place,
      'standing_place_type': instance.standing_place_type,
      'standing_team': instance.standing_team,
      'standing_P': instance.standing_P,
      'standing_W': instance.standing_W,
      'standing_D': instance.standing_D,
      'standing_L': instance.standing_L,
      'standing_F': instance.standing_F,
      'standing_A': instance.standing_A,
      'standing_GD': instance.standing_GD,
      'standing_PTS': instance.standing_PTS,
      'team_key': instance.team_key,
      'league_key': instance.league_key,
      'league_season': instance.league_season,
      'league_round': instance.league_round,
      'standing_updated': instance.standing_updated,
      'fk_stage_key': instance.fk_stage_key,
      'stage_name': instance.stage_name,
      'team_logo': instance.team_logo,
      'standing_LP': instance.standing_LP,
      'standing_WP': instance.standing_WP,
    };
