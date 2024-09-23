import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/home/controllers/selected_date_controller.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/home/services/soccer2_service.dart';
import 'package:collection/collection.dart';
import 'dart:developer' as developer;

import 'package:scora/src/shared/providers/provider_search.dart';

part 'soccer_fixture_controller.g.dart';

@riverpod
class SoccerFixtureController extends _$SoccerFixtureController {
  // Store the original unfiltered fixture data
  Map<String, List<SoccerFixtureResult>> _unfilteredFixtures = {};

  @override
  Future<Map<String, List<SoccerFixtureResult>>> build() async {
    _listenToSelectedDateChanges();
    _listentoIsLiveChanges();
    return await fetchAndGroupFixtures();
  }

  void _listenToSelectedDateChanges() {
    ref.listen<DateTime>(selectedDateControllerProvider, (previousDate, newDate) {
      if (previousDate != newDate) {
        _updateFixturesForNewDate(newDate);
      }
    });
  }

  void _listentoIsLiveChanges() {
    ref.listen<bool>(isLiveProvider, (previousIsLive, newIsLive) {
      final selectedDate = ref.read(selectedDateControllerProvider);
      final selectedDateController = ref.read(selectedDateControllerProvider.notifier);

      if (newIsLive == true) {
        selectedDateController.setDateTime(DateTime.now());
      }

      _updateFixturesForNewDate(selectedDate);
    });
  }

  Future<Map<String, List<SoccerFixtureResult>>> _updateFixturesForNewDate(DateTime newDate) async {
    state = const AsyncValue.loading();
    try {
      final stringSelectedDate = DateFormat('yyyy-MM-dd').format(newDate);
      final service = ref.read(Soccer2ServiceProvider);
      final isLive = ref.read(isLiveProvider);
      final search = ref.read(searchProvider);

      final response = isLive
          ? await service.getLive()
          : await service.getFixture(stringSelectedDate);
      final List<SoccerFixtureResult> fixtures = (response['result'] as List).map((fixture) {
        return SoccerFixtureResult.fromJson(fixture);
      }).toList();

      final Map<String, List<SoccerFixtureResult>> groupedByLeague = groupBy(
        fixtures,
            (SoccerFixtureResult fixture) {
          final leagueName = fixture.league_name ?? 'Unknown';
          final leagueKey = fixture.league_key ?? 'UnknownKey';

          if(fixture.league_name == "Premier League"){
            developer.log('away team ${fixture.event_away_team.toString()}');
            developer.log('  league_key  ${fixture.league_key.toString()}');
            developer.log('  league_name  ${fixture.league_name.toString()}');
          }
          return '$leagueName+$leagueKey';
        },
      );
      //     .map((compositeKey, fixtureList) {
      //   final leagueName = compositeKey.split('+').first;
      //   return MapEntry(leagueName, fixtureList);
      // });
      developer.log('Raw data count:${groupedByLeague.length.toString()}');

      _unfilteredFixtures = groupedByLeague; // Store the unfiltered data

      if(search !=""){
        final groupedByLeagueSearch = searchLeague(search);
        state = AsyncValue.data(groupedByLeagueSearch);
        return groupedByLeagueSearch;
      }

      state = AsyncValue.data(groupedByLeague);
      return groupedByLeague;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      throw ('Failed to load fixtures: $e');
    }
  }

  Future<Map<String, List<SoccerFixtureResult>>> fetchAndGroupFixtures() async {
    final selectedDate = ref.read(selectedDateControllerProvider);
    final search = ref.read(searchProvider);
    final newFixture = await _updateFixturesForNewDate(selectedDate);

    if (search.isNotEmpty) {
      final filter = searchLeague(search);
      state = AsyncValue.data(filter);
      return filter;
    }
    return newFixture;
  }

  Map<String, List<SoccerFixtureResult>> searchLeague(String leagueName) {
    // Always apply the search on the unfiltered data
    final fixtures = _unfilteredFixtures;
    developer.log('search ${fixtures}');



    if (leagueName=="") {
      state = AsyncValue.data(fixtures);
      return fixtures;
    }

    final filteredFixtures = fixtures.entries
        .where((entry) =>
        entry.key.toLowerCase().contains(leagueName.toLowerCase()))
        .toList();

    //entry.key.split('+').first.toLowerCase().contains(leagueName.toLowerCase()))

    final final_filter = Map.fromEntries(filteredFixtures);
    state = AsyncValue.data(final_filter);
    return final_filter;

  }
}



final isLiveProvider = StateProvider<bool>((ref) => false);
