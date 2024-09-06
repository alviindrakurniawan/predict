import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/home/controllers/selected_date_controller.dart';
import 'package:scora/src/features/home/models/soccer_fixture.dart';
import 'package:scora/src/features/home/services/soccer2_service.dart';
import 'package:collection/collection.dart';
import 'dart:developer' as developer;

import 'package:scora/src/shared/providers/provider_search.dart';

part 'soccer_fixture_controller.g.dart';

@riverpod
class SoccerFixtureController extends _$SoccerFixtureController {
  @override
  Future<Map<String, List<SoccerFixtureResult>>> build() async {
    _listenToSelectedDateChanges();
    return await _fetchAndGroupFixtures();
  }

  void _listenToSelectedDateChanges() {
    var isLive = ref.watch(isLiveProvider);
    ref.listen<DateTime>(selectedDateControllerProvider,
        (previousDate, newDate) {
      if (isLive = false) {
        if (previousDate != newDate) {
          _updateFixturesForNewDate(newDate);
        } else {
          final selectedDate =
              ref.read(selectedDateControllerProvider.notifier);
          selectedDate.setDateTime(DateTime.now().toUtc());

          _updateFixturesForNewDate(ref.read(selectedDateControllerProvider));
        }
      }
    });

    // ref.listen(isLiveProvider, listener)
  }

  Future<Map<String, List<SoccerFixtureResult>>> _updateFixturesForNewDate(
      DateTime newDate) async {
    state = const AsyncValue.loading();
    try {
      final stringSelectedDate = DateFormat('yyyy-MM-dd').format(newDate);
      final service = ref.read(Soccer2ServiceProvider);
      final isLive = ref.watch(isLiveProvider);
      // final selectedDateTriger = ref.read(selectedDateControllerProvider.notifier);
      // if(isLive){
      //   selectedDateTriger.setDateTime(DateTime.now().toUtc());
      // }
      final response = isLive
          ? await service.getLive()
          : await service.getFixture(stringSelectedDate);
      developer.log('Fixture Data: $response');

      final List<SoccerFixtureResult> fixtures =
          (response['result'] as List).map((fixture) {
        developer.log('Fixture Data: $fixture');

        return SoccerFixtureResult.fromJson(fixture);
      }).toList();
      developer.log('fixturesObject: $fixtures');

      final Map<String, List<SoccerFixtureResult>> groupedByLeague = groupBy(
        fixtures,
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
      throw Exception('Failed to load fixtures: $e');
    }
  }

  Future<Map<String, List<SoccerFixtureResult>>>
      _fetchAndGroupFixtures() async {
    final selectedDate = ref.watch(selectedDateControllerProvider);
    final search = ref.watch(searchProvider);
    final newFixture = await _updateFixturesForNewDate(selectedDate);
    if (search.isNotEmpty) {
      final filter = searchLeague(search);
      state = AsyncValue.data(filter);
      return filter;
    }
    return newFixture;
  }

  Map<String, List<SoccerFixtureResult>> searchLeague(String leagueName) {
    final fixtures = state.value ?? {};
    final filteredFixtures = fixtures.entries
        .where((entry) =>
            entry.key.toLowerCase().contains(leagueName.toLowerCase()))
        .toList();

    final final_filter = Map.fromEntries(filteredFixtures);
    state = AsyncValue.data(final_filter);
    return final_filter;
  }
}

final isLiveProvider = StateProvider<bool>((ref) => false);
