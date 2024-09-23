// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer_H2H_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SoccerH2HModelImpl _$$SoccerH2HModelImplFromJson(Map<String, dynamic> json) =>
    _$SoccerH2HModelImpl(
      success: (json['success'] as num?)?.toInt(),
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SoccerH2HModelImplToJson(
        _$SoccerH2HModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      H2H: (json['H2H'] as List<dynamic>?)
          ?.map((e) => SoccerFixtureResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstTeamResults: (json['firstTeamResults'] as List<dynamic>?)
          ?.map((e) => SoccerFixtureResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      secondTeamResults: (json['secondTeamResults'] as List<dynamic>?)
          ?.map((e) => SoccerFixtureResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'H2H': instance.H2H,
      'firstTeamResults': instance.firstTeamResults,
      'secondTeamResults': instance.secondTeamResults,
    };
