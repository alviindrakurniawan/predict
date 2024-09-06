// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaderboardResponseImpl _$$LeaderboardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardResponseImpl(
      responseMessage: json['responseMessage'] as String?,
      data: json['data'] == null
          ? null
          : LeaderboardData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LeaderboardResponseImplToJson(
        _$LeaderboardResponseImpl instance) =>
    <String, dynamic>{
      'responseMessage': instance.responseMessage,
      'data': instance.data,
    };

_$LeaderboardDataImpl _$$LeaderboardDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardDataImpl(
      topUsers: (json['topUsers'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      loggedInUser: json['loggedInUser'] == null
          ? null
          : User.fromJson(json['loggedInUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LeaderboardDataImplToJson(
        _$LeaderboardDataImpl instance) =>
    <String, dynamic>{
      'topUsers': instance.topUsers,
      'loggedInUser': instance.loggedInUser,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      rank: json['rank'] as String?,
      userId: json['userId'] as String?,
      username: json['username'] as String?,
      sumPoint: (json['sumPoint'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'userId': instance.userId,
      'username': instance.username,
      'sumPoint': instance.sumPoint,
    };
