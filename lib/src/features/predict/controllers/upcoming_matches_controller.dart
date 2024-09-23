import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/home/controllers/selected_date_controller.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/home/services/soccer2_service.dart';
import 'package:collection/collection.dart';
import 'dart:developer' as developer;

part 'upcoming_matches_controller.g.dart';

@riverpod
class UpcomingMatchesController extends _$UpcomingMatchesController {
  @override
  Future<Map<String, List<SoccerFixtureResult>>> build() async {
    final selectedDate = ref.read(selectedDateControllerProvider);
    _listenToSelectedDateChanges();
    return await _fetchAndGroupUpcomingMatches(selectedDate);
  }

  void _listenToSelectedDateChanges() {
    ref.listen<DateTime>(
      selectedDateControllerProvider,
      (previousDate, newDate) {
        if (previousDate != newDate) {
          _fetchAndGroupUpcomingMatches(newDate);
        }
      },
    );
  }

  // ref.listen(isLiveProvider, listener)

  Future<Map<String, List<SoccerFixtureResult>>> _fetchAndGroupUpcomingMatches(
      DateTime selectedDate) async {
    state = const AsyncValue.loading();
    try {
      final stringSelectedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
      final service = ref.read(Soccer2ServiceProvider);
      final response = await service.getFixture(stringSelectedDate);
      developer.log('Upcoming Matches Data: $response');

      final List<SoccerFixtureResult> fixtures =
          (response['result'] as List).map((fixture) {
        developer.log('Fixture Data: $fixture');
        return SoccerFixtureResult.fromJson(fixture);
      }).toList();
      developer.log('fixturesObject: $fixtures');

      final filteredFixtures = fixtures.where((fixture) {
        return fixture.event_status == "";
      }).toList();

      final Map<String, List<SoccerFixtureResult>> groupedByLeague = groupBy(
        filteredFixtures,
        (SoccerFixtureResult fixture) {
          final leagueName = fixture.league_name ?? 'Unknown';
          final leagueKey = fixture.league_key ?? 'UnknownKey';
          return '$leagueName-$leagueKey';
        },
      ).map((compositeKey, fixtureList) {
        final leagueName = compositeKey.split('-').first;
        return MapEntry(leagueName, fixtureList);
      });

      state = AsyncValue.data(groupedByLeague);
      return groupedByLeague;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load upcoming matches: $e');
    }
  }
}
