// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefferralModelImpl _$$RefferralModelImplFromJson(Map<String, dynamic> json) =>
    _$RefferralModelImpl(
      reffId: json['reffId'] as String,
      username: json['username'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$RefferralModelImplToJson(
        _$RefferralModelImpl instance) =>
    <String, dynamic>{
      'reffId': instance.reffId,
      'username': instance.username,
      'createdAt': instance.createdAt,
    };
