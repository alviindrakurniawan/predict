import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/home/Football/models/soccer_H2H_model.dart';
import 'package:scora/src/features/home/Football/models/soccer_standings_model.dart';
import 'package:scora/src/features/home/services/soccer2_service.dart';

part 'soccer_tab_table_controller.g.dart';

@riverpod
class SoccerTabTableController extends _$SoccerTabTableController {
  @override
  Future<SoccerStandingsResponse> build(String leagueId) async {
    return await getStandingData(leagueId);
  }

  Future<SoccerStandingsResponse> getStandingData(String leagueId) async {
    state = AsyncLoading();
    try {
      final service = ref.read(Soccer2ServiceProvider);
      final response = await service.getStandings(leagueId: leagueId);

      if (response.containsKey('result')) {
        final data = SoccerStandingsResponse.fromJson(response);
        return data;
      }
      return SoccerStandingsResponse();
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      throw ('Failed to load Standing: $e');
    }
  }
}
