// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer_fixture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SoccerFixtureResponseImpl _$$SoccerFixtureResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixtureResponseImpl(
      success: (json['success'] as num?)?.toInt(),
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => SoccerFixtureResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SoccerFixtureResponseImplToJson(
        _$SoccerFixtureResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
    };

_$SoccerFixtureResultImpl _$$SoccerFixtureResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixtureResultImpl(
      event_key: (json['event_key'] as num?)?.toInt(),
      event_date: json['event_date'] as String?,
      event_time: json['event_time'] as String?,
      event_home_team: json['event_home_team'] as String?,
      home_team_key: (json['home_team_key'] as num?)?.toInt(),
      event_away_team: json['event_away_team'] as String?,
      away_team_key: (json['away_team_key'] as num?)?.toInt(),
      event_halftime_result: json['event_halftime_result'] as String?,
      event_final_result: json['event_final_result'] as String?,
      event_ft_result: json['event_ft_result'] as String?,
      event_penalty_result: json['event_penalty_result'] as String?,
      event_status: json['event_status'] as String?,
      country_name: json['country_name'] as String?,
      league_name: json['league_name'] as String?,
      league_key: (json['league_key'] as num?)?.toInt(),
      league_round: json['league_round'] as String?,
      league_season: json['league_season'] as String?,
      event_live: json['event_live'] as String?,
      event_stadium: json['event_stadium'] as String?,
      event_referee: json['event_referee'] as String?,
      home_team_logo: json['home_team_logo'] as String?,
      away_team_logo: json['away_team_logo'] as String?,
      event_country_key: (json['event_country_key'] as num?)?.toInt(),
      league_logo: json['league_logo'] as String?,
      country_logo: json['country_logo'] as String?,
      event_home_formation: json['event_home_formation'] as String?,
      event_away_formation: json['event_away_formation'] as String?,
      fk_stage_key: (json['fk_stage_key'] as num?)?.toInt(),
      stage_name: json['stage_name'] as String?,
      league_group: json['league_group'] as String?,
      prediction: json['prediction'] as String?,
      goalscorers: (json['goalscorers'] as List<dynamic>?)
          ?.map((e) =>
              SoccerFixtureGoalscorer.fromJson(e as Map<String, dynamic>))
          .toList(),
      substitutes: (json['substitutes'] as List<dynamic>?)
          ?.map((e) =>
              SoccerFixtureSubstitute.fromJson(e as Map<String, dynamic>))
          .toList(),
      cards: (json['cards'] as List<dynamic>?)
          ?.map((e) => SoccerFixtureCard.fromJson(e as Map<String, dynamic>))
          .toList(),
      lineups: json['lineups'] == null
          ? null
          : SoccerFixtureLineups.fromJson(
              json['lineups'] as Map<String, dynamic>),
      statistics: (json['statistics'] as List<dynamic>?)
          ?.map(
              (e) => SoccerFixtureStatistic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SoccerFixtureResultImplToJson(
        _$SoccerFixtureResultImpl instance) =>
    <String, dynamic>{
      'event_key': instance.event_key,
      'event_date': instance.event_date,
      'event_time': instance.event_time,
      'event_home_team': instance.event_home_team,
      'home_team_key': instance.home_team_key,
      'event_away_team': instance.event_away_team,
      'away_team_key': instance.away_team_key,
      'event_halftime_result': instance.event_halftime_result,
      'event_final_result': instance.event_final_result,
      'event_ft_result': instance.event_ft_result,
      'event_penalty_result': instance.event_penalty_result,
      'event_status': instance.event_status,
      'country_name': instance.country_name,
      'league_name': instance.league_name,
      'league_key': instance.league_key,
      'league_round': instance.league_round,
      'league_season': instance.league_season,
      'event_live': instance.event_live,
      'event_stadium': instance.event_stadium,
      'event_referee': instance.event_referee,
      'home_team_logo': instance.home_team_logo,
      'away_team_logo': instance.away_team_logo,
      'event_country_key': instance.event_country_key,
      'league_logo': instance.league_logo,
      'country_logo': instance.country_logo,
      'event_home_formation': instance.event_home_formation,
      'event_away_formation': instance.event_away_formation,
      'fk_stage_key': instance.fk_stage_key,
      'stage_name': instance.stage_name,
      'league_group': instance.league_group,
      'prediction': instance.prediction,
      'goalscorers': instance.goalscorers,
      'substitutes': instance.substitutes,
      'cards': instance.cards,
      'lineups': instance.lineups,
      'statistics': instance.statistics,
    };

_$SoccerFixtureGoalscorerImpl _$$SoccerFixtureGoalscorerImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixtureGoalscorerImpl(
      time: json['time'] as String?,
      home_scorer: json['home_scorer'] as String?,
      home_scorer_id: json['home_scorer_id'] as String?,
      home_assist: json['home_assist'] as String?,
      home_assist_id: json['home_assist_id'] as String?,
      score: json['score'] as String?,
      away_scorer: json['away_scorer'] as String?,
      away_scorer_id: json['away_scorer_id'] as String?,
      away_assist: json['away_assist'] as String?,
      away_assist_id: json['away_assist_id'] as String?,
      info: json['info'] as String?,
      info_time: json['info_time'] as String?,
    );

Map<String, dynamic> _$$SoccerFixtureGoalscorerImplToJson(
        _$SoccerFixtureGoalscorerImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'home_scorer': instance.home_scorer,
      'home_scorer_id': instance.home_scorer_id,
      'home_assist': instance.home_assist,
      'home_assist_id': instance.home_assist_id,
      'score': instance.score,
      'away_scorer': instance.away_scorer,
      'away_scorer_id': instance.away_scorer_id,
      'away_assist': instance.away_assist,
      'away_assist_id': instance.away_assist_id,
      'info': instance.info,
      'info_time': instance.info_time,
    };

_$SoccerFixtureSubstituteImpl _$$SoccerFixtureSubstituteImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixtureSubstituteImpl(
      time: json['time'] as String?,
      home_scorer: json['home_scorer'],
      away_scorer: json['away_scorer'],
      score: json['score'] as String?,
    );

Map<String, dynamic> _$$SoccerFixtureSubstituteImplToJson(
        _$SoccerFixtureSubstituteImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'home_scorer': instance.home_scorer,
      'away_scorer': instance.away_scorer,
      'score': instance.score,
    };

_$SoccerFixtureScorerImpl _$$SoccerFixtureScorerImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixtureScorerImpl(
      inPlayer: json['in'] as String?,
      outPlayer: json['out'] as String?,
    );

Map<String, dynamic> _$$SoccerFixtureScorerImplToJson(
        _$SoccerFixtureScorerImpl instance) =>
    <String, dynamic>{
      'in': instance.inPlayer,
      'out': instance.outPlayer,
    };

_$SoccerFixtureCardImpl _$$SoccerFixtureCardImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixtureCardImpl(
      time: json['time'] as String?,
      home_fault: json['home_fault'] as String?,
      card: json['card'] as String?,
      away_fault: json['away_fault'] as String?,
    );

Map<String, dynamic> _$$SoccerFixtureCardImplToJson(
        _$SoccerFixtureCardImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'home_fault': instance.home_fault,
      'card': instance.card,
      'away_fault': instance.away_fault,
    };

_$SoccerFixtureLineupsImpl _$$SoccerFixtureLineupsImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixtureLineupsImpl(
      home_team: json['home_team'] == null
          ? null
          : SoccerFixtureTeamLineup.fromJson(
              json['home_team'] as Map<String, dynamic>),
      away_team: json['away_team'] == null
          ? null
          : SoccerFixtureTeamLineup.fromJson(
              json['away_team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SoccerFixtureLineupsImplToJson(
        _$SoccerFixtureLineupsImpl instance) =>
    <String, dynamic>{
      'home_team': instance.home_team,
      'away_team': instance.away_team,
    };

_$SoccerFixtureTeamLineupImpl _$$SoccerFixtureTeamLineupImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixtureTeamLineupImpl(
      starting_lineups: (json['starting_lineups'] as List<dynamic>?)
          ?.map((e) => SoccerFixturePlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
      substitutes: (json['substitutes'] as List<dynamic>?)
          ?.map((e) => SoccerFixturePlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
      coaches: (json['coaches'] as List<dynamic>?)
          ?.map((e) => SoccerFixtureCoach.fromJson(e as Map<String, dynamic>))
          .toList(),
      missing_players: json['missing_players'] as List<dynamic>?,
    );

Map<String, dynamic> _$$SoccerFixtureTeamLineupImplToJson(
        _$SoccerFixtureTeamLineupImpl instance) =>
    <String, dynamic>{
      'starting_lineups': instance.starting_lineups,
      'substitutes': instance.substitutes,
      'coaches': instance.coaches,
      'missing_players': instance.missing_players,
    };

_$SoccerFixturePlayerImpl _$$SoccerFixturePlayerImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixturePlayerImpl(
      player: json['player'] as String?,
      player_number: (json['player_number'] as num?)?.toInt(),
      player_position: (json['player_position'] as num?)?.toInt(),
      player_country: json['player_country'] as String?,
      player_key: (json['player_key'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SoccerFixturePlayerImplToJson(
        _$SoccerFixturePlayerImpl instance) =>
    <String, dynamic>{
      'player': instance.player,
      'player_number': instance.player_number,
      'player_position': instance.player_position,
      'player_country': instance.player_country,
      'player_key': instance.player_key,
    };

_$SoccerFixtureCoachImpl _$$SoccerFixtureCoachImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixtureCoachImpl(
      coache: json['coache'] as String?,
      coache_country: json['coache_country'] as String?,
    );

Map<String, dynamic> _$$SoccerFixtureCoachImplToJson(
        _$SoccerFixtureCoachImpl instance) =>
    <String, dynamic>{
      'coache': instance.coache,
      'coache_country': instance.coache_country,
    };

_$SoccerFixtureStatisticImpl _$$SoccerFixtureStatisticImplFromJson(
        Map<String, dynamic> json) =>
    _$SoccerFixtureStatisticImpl(
      type: json['type'] as String?,
      home: json['home'] as String?,
      away: json['away'] as String?,
    );

Map<String, dynamic> _$$SoccerFixtureStatisticImplToJson(
        _$SoccerFixtureStatisticImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'home': instance.home,
      'away': instance.away,
    };
