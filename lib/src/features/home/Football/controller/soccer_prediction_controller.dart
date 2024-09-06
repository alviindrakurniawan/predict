import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/home/controllers/selected_date_controller.dart';
import 'package:scora/src/features/home/models/soccer_fixture.dart';
import 'package:scora/src/features/home/services/soccer2_service.dart';
import 'package:collection/collection.dart';
import 'dart:developer' as developer;


part 'soccer_prediction_controller.g.dart';
@riverpod
class SoccerPredictionController extends _$SoccerPredictionController {
  @override
  Future<SoccerFixtureResult> build({required String matchId}) async {
    return await _updateinfoMatch(matchId);
  }

  Future<SoccerFixtureResult> _updateinfoMatch(
      String matchId) async {

    developer.log('matchId: $matchId');
    state = const AsyncValue.loading();
    try {
      final service = ref.read(Soccer2ServiceProvider);
      final response = await service.getFixtureByMatchId(matchId: matchId);

      final fixtureResult = SoccerFixtureResult.fromJson(response['result'][0]);

      state = AsyncValue.data(fixtureResult);
      return fixtureResult;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load fixtures: $e');
    }
  }
}