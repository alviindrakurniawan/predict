import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/home/services/soccer2_service.dart';
import 'package:scora/src/features/predict/services/prediction_service.dart';
import 'dart:developer' as developer;
part 'history_predict_controller.g.dart';

@riverpod
class HistoryPredictController extends _$HistoryPredictController {
  @override
  Future<List<SoccerFixtureResult?>> build() async {
    return getHistoryPredict();
  }

  Future<List<SoccerFixtureResult?>> getHistoryPredict() async {
    state = const AsyncValue.loading();
    try {
      final predictService = ref.read(PredictionServiceProvider);
      final fixtureService = ref.read(Soccer2ServiceProvider);
      final response = await predictService.getPredictionList();
      if (response.containsKey('data')) {
        final List<PredictModel?> historyPredict = (response['data'] as List)
            .map((predict) => PredictModel.fromJson(predict))
            .toList();

        final List<Future<SoccerFixtureResult?>> fixtureFutures = historyPredict.map((prediction) async {
          try {
            final fixtureResponse = await fixtureService.getFixtureByMatchId(matchId: prediction!.matchId);
            if(fixtureResponse['result'][0] == null) {

              return null;
            }
            var fixtureResult = SoccerFixtureResult.fromJson(fixtureResponse['result'][0]);

            developer.log('Fixture Result: $fixtureResult');
            // Insert prediction into fixture result
            return fixtureResult.copyWith(
              prediction: prediction.prediction.toString(),
            );
          } catch (e) {
            return null;
          }

        }).toList();
        developer.log('PPPPP  ${fixtureFutures.length.toString()}');


        // Wait for all the futures to complete
        final List<SoccerFixtureResult?> historyPredictFixtures = (await Future.wait(fixtureFutures))
            .where((fixture) => fixture != null)
            .toList();

        state = AsyncValue.data(historyPredictFixtures);
        return historyPredictFixtures;
      } else {
        state = AsyncValue.error('Failed to load history predict', StackTrace.current);
        return [];
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      throw ('Failed to load history predict: $e');
    }
  }
}
