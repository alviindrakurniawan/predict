// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoProfileModelImpl _$$PhotoProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PhotoProfileModelImpl(
      id: json['id'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$PhotoProfileModelImplToJson(
        _$PhotoProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'imagePath': instance.imagePath,
    };
