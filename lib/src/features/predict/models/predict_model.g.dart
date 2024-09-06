// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predict_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PredictModelImpl _$$PredictModelImplFromJson(Map<String, dynamic> json) =>
    _$PredictModelImpl(
      predictionId: json['predictionId'] as String,
      sport: json['sport'] as String,
      categoryId: json['categoryId'] as String,
      matchId: json['matchId'] as String,
      matchStatus: (json['matchStatus'] as num).toInt(),
      prediction: (json['prediction'] as num).toInt(),
      localTeamId: json['localTeamId'] as String,
      visitorTeamId: json['visitorTeamId'] as String,
      partnerDataJson: json['partnerDataJson'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PredictModelImplToJson(_$PredictModelImpl instance) =>
    <String, dynamic>{
      'predictionId': instance.predictionId,
      'sport': instance.sport,
      'categoryId': instance.categoryId,
      'matchId': instance.matchId,
      'matchStatus': instance.matchStatus,
      'prediction': instance.prediction,
      'localTeamId': instance.localTeamId,
      'visitorTeamId': instance.visitorTeamId,
      'partnerDataJson': instance.partnerDataJson,
      'createdAt': instance.createdAt.toIso8601String(),
    };
