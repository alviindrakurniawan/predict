// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      taskId: json['taskId'] as String,
      taskName: json['taskName'] as String,
      taskUrl: json['taskUrl'] as String,
      taskType: json['taskType'] as String,
      token: (json['token'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isCompleted: json['is_completed'] as bool,
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'taskName': instance.taskName,
      'taskUrl': instance.taskUrl,
      'taskType': instance.taskType,
      'token': instance.token,
      'createdAt': instance.createdAt.toIso8601String(),
      'is_completed': instance.isCompleted,
    };
