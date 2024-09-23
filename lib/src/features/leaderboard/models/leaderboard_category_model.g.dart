// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaderboardCategoryModelImpl _$$LeaderboardCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardCategoryModelImpl(
      responseMessage: json['responseMessage'] as String?,
      data: json['data'] == null
          ? null
          : LeaderboardCategoryData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LeaderboardCategoryModelImplToJson(
        _$LeaderboardCategoryModelImpl instance) =>
    <String, dynamic>{
      'responseMessage': instance.responseMessage,
      'data': instance.data,
    };

_$LeaderboardCategoryDataImpl _$$LeaderboardCategoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardCategoryDataImpl(
      category: (json['category'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LeaderboardCategoryDataImplToJson(
        _$LeaderboardCategoryDataImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
