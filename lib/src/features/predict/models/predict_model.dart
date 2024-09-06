import 'package:freezed_annotation/freezed_annotation.dart';

part 'predict_model.freezed.dart';
part 'predict_model.g.dart';

@freezed
class PredictModel with _$PredictModel {
  const factory PredictModel({
    required String predictionId,
    required String sport,
    required String categoryId,
    required String matchId,
    required int matchStatus,
    required int prediction,
    required String localTeamId,
    required String visitorTeamId,
    String? partnerDataJson,
    required DateTime createdAt,
  }) = _PredictModel;

  factory PredictModel.fromJson(Map<String, dynamic> json) =>
      _$PredictModelFromJson(json);
}