import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/home/models/fixture_model.dart';
import 'package:scora/src/features/home/services/soccerr_service.dart';
import 'package:collection/collection.dart';
import 'dart:developer' as developer;

part 'fixture_controller.g.dart';
@riverpod
class FixtureController extends _$FixtureController {
  late List<Fixture> allFixtures;
  List<Map<String, bool>> selectedCountries = [];

  @override
  Future<Map<String, List<Fixture>>> build() async {
    return await _getFixtures();
  }

  Future<Map<String, List<Fixture>>> _getFixtures() async {
    state = const AsyncValue.loading();
    try {
      final soccerService = ref.read(SoccerServiceProvider);
      final response = await soccerService.getLeagueList();

      // Check if the response contains the expected data
      if (response.containsKey('fixtures') && response['fixtures'].containsKey('mapping')) {
        allFixtures = (response['fixtures']['mapping'] as List)
            .map((fixtureData) => Fixture.fromJson(fixtureData))
            .toList();

        final groupedByCountry =
        _groupFixturesByCountry(_filterFixtures(allFixtures));
        _initializeSelectedCountries(groupedByCountry);

        state = AsyncValue.data(groupedByCountry);
        return groupedByCountry;
      } else {
        state = AsyncValue.error('Fixtures data not found', StackTrace.current);
        return {};
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load fixtures: $e');
    }
  }

  void _initializeSelectedCountries(
      Map<String, List<Fixture>> groupedByCountry) {
    selectedCountries = groupedByCountry.keys.map((country) {
      return {country: true}; // Initialize all as selected
    }).toList();
  }

  void toggleCountrySelection(String country) {
    final countryMap = selectedCountries.firstWhere(
          (element) => element.containsKey(country),
      orElse: () => {},
    );

    if (countryMap.isNotEmpty) {
      countryMap[country] = !(countryMap[country] ?? false);
    } else {
      selectedCountries.add({country: true});
    }

    _updateFilteredFixtures();
  }

  void _updateFilteredFixtures() {
    final selectedCountriesList =
    selectedCountries.map((countryMap) => countryMap.keys.first).toList();

    final filteredFixtures = allFixtures.where((fixture) {
      return selectedCountriesList.isEmpty ||
          selectedCountriesList.contains(fixture.country);
    }).toList();

    developer.log('Filtered fixtures: $filteredFixtures');

    final groupedByCountry = _groupFixturesByCountry(filteredFixtures);
    developer.log('Grouped fixtures: $groupedByCountry');
    state = AsyncValue.data(groupedByCountry); // Update state with grouped fixtures only
  }

  List<Fixture> _filterFixtures(List<Fixture> fixtures) {
    return fixtures.where((fixture) {
      final dateEnd = DateTime.parse(fixture.dateEnd ?? '2100-09-18T00:00:00Z');
      return dateEnd.isAfter(DateTime.now().toUtc());
    }).toList();
  }

  Map<String, List<Fixture>> _groupFixturesByCountry(List<Fixture> fixtures) {
    return groupBy(fixtures, (Fixture fixture) => fixture.country ?? "Unknown");
  }

  void clearSelectedCountries() {
    selectedCountries.clear();
    _updateFilteredFixtures(); // Update the UI to reflect the cleared selection
  }
}
