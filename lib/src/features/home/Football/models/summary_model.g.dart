// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SummaryModelImpl _$$SummaryModelImplFromJson(Map<String, dynamic> json) =>
    _$SummaryModelImpl(
      time: json['time'] as String,
      home: json['home'] as String?,
      homeIcon: json['homeIcon'] as String?,
      score: json['score'] as String?,
      awayIcon: json['awayIcon'] as String?,
      away: json['away'] as String?,
    );

Map<String, dynamic> _$$SummaryModelImplToJson(_$SummaryModelImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'home': instance.home,
      'homeIcon': instance.homeIcon,
      'score': instance.score,
      'awayIcon': instance.awayIcon,
      'away': instance.away,
    };
