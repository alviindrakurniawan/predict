import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/predict/services/prediction_service.dart';
import 'package:scora/src/features/profile/models/response_model.dart';


part 'soccer_prediction_send_predict_controller.g.dart';

@riverpod
class SoccerPredictionSendPredictController extends _$SoccerPredictionSendPredictController {
  @override
  Future<ResponseModel?> build() async {
    return null;
  }

  Future<ResponseModel?> makePrediction({
    required String sport,
    required String leagueId,
    required String matchId,
    required String prediction,
    required String homeTeamId,
    required String awayTeamId,
  }) async {
    state = const AsyncLoading();
    final predictionService = ref.read(PredictionServiceProvider);
    try {
      final result = await predictionService.predict(
        sport: sport,
        leagueId: leagueId,
        matchId: matchId,
        prediction: prediction,
        homeTeamId: homeTeamId,
        awayTeamId: awayTeamId,
      );
      final response = ResponseModel.fromJson(result);
      state = AsyncData(response);
      return response;
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
      return null;
    }
  }
}
