import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/home/controllers/selected_date_controller.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/home/services/soccer2_service.dart';
import 'package:collection/collection.dart';
import 'dart:developer' as developer;

part 'soccer_tab_fixtures_controller.g.dart';

@riverpod
class SoccerTabFixturesController extends _$SoccerTabFixturesController {
  @override
  Future<Map<String, List<SoccerFixtureResult>>> build({required String leagueId}) async {
    return await _updateFixturesForNewLeague(leagueId);
  }

  Future<Map<String, List<SoccerFixtureResult>>> _updateFixturesForNewLeague(
      String leagueId) async {
    state = const AsyncValue.loading();
    try {
      final today = DateTime.now();
      final tomorrow = today.add(Duration(days: 1));

      final stringToday = DateFormat('yyyy-MM-dd').format(today);
      final stringTomorrow = DateFormat('yyyy-MM-dd').format(tomorrow);
      final service = ref.read(Soccer2ServiceProvider);

      final response = await service.getFixtureByLeagueId(
          leagueId: leagueId, startDate: stringToday, endDate: stringTomorrow);


      if (response.containsKey('result') && response['result'] is List) {
        final List<SoccerFixtureResult> fixtures = (response['result'] as List)
            .map((fixture) => SoccerFixtureResult.fromJson(fixture))
            .toList();

        // Order by date
        fixtures.sort((a, b) {
          final dateA = DateTime.parse(a.event_date!);
          final dateB = DateTime.parse(b.event_date!);
          return dateA.compareTo(dateB);
        });

        final Map<String, List<SoccerFixtureResult>> groupedByLeague = groupBy(
          fixtures,
              (SoccerFixtureResult fixture) {
            if (fixture.event_date == null || fixture.event_date!.isEmpty) {
              return 'Unknown';
            }
            final DateTime parsedDate = DateTime.parse(fixture.event_date!);
            final String formattedDate =
            DateFormat('MMMM dd, yyyy').format(parsedDate);

            return formattedDate;
          },
        );

        state = AsyncValue.data(groupedByLeague);
        return groupedByLeague;
      } else {
        // Handle the case where 'result' is missing or not a List
        state = AsyncValue.data({});
        return {};
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load fixtures: $e');
    }
  }
}
