import 'package:http/http.dart' as http;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/shared/services/network_feature_service.dart';
import 'package:scora/src/shared/shared.dart';

final PredictionServiceProvider =
    Provider.autoDispose<PredictionService>((ref) {
  final networkService = ref.watch(NetworkFeatureServiceProvider);
  return PredictionService(networkService: networkService);
});

class PredictionService {
  final NetworkFeatureService networkService;

  PredictionService({required this.networkService});

  Future<Map<String, dynamic>> predict({
    required String sport,
    required String leagueId,
    required String matchId,
    required String prediction,
    required String homeTeamId,
    required String awayTeamId
}
      ) async {
    final response = await networkService.post(
      '/prediction/create',
        {
          "sport": sport,
          "categoryId": leagueId,
          "matchId": matchId,
          "prediction": prediction,
          "localTeamId": homeTeamId,
          "visitorTeamId": awayTeamId
    });
    return response;
  }

  Future<Map<String, dynamic>> getPredictionList(
      {String page = "1", String limit = "5"}) async {
    final response = await networkService.get(
      '/prediction/prediction-list',
      queryParams: {
        'page': page,
        'limit': limit,
      },
    );
    return response;
  }

  Future<Map<String, dynamic>> getDetailPrediction(
      {required String matchId}) async {
    final response =
        await networkService.get('/prediction/prediction-list', queryParams: {
      'matchId': matchId,
    });
    return response;
  }
}
