// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FixtureImpl _$$FixtureImplFromJson(Map<String, dynamic> json) =>
    _$FixtureImpl(
      country: json['country'] as String?,
      dateEnd: json['dateEnd'] as String?,
      dateStart: json['dateStart'] as String?,
      id: json['id'] as String?,
      isWomen: json['isWomen'] as bool?,
      isCup: json['isCup'] as bool?,
      liveLineups: json['liveLineups'] as bool?,
      liveStats: json['liveStats'] as bool?,
      name: json['name'] as String?,
      path: json['path'] as String?,
      season: json['season'] as String?,
    );

Map<String, dynamic> _$$FixtureImplToJson(_$FixtureImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'dateEnd': instance.dateEnd,
      'dateStart': instance.dateStart,
      'id': instance.id,
      'isWomen': instance.isWomen,
      'isCup': instance.isCup,
      'liveLineups': instance.liveLineups,
      'liveStats': instance.liveStats,
      'name': instance.name,
      'path': instance.path,
      'season': instance.season,
    };
