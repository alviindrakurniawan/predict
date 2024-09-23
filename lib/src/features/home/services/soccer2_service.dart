import 'package:http/http.dart' as http;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/shared/providers/timezone_provider.dart';
import 'package:scora/src/shared/services/network_serice_3rdparty2.dart';
import 'package:scora/src/shared/services/network_service_3rdparty.dart';
import 'package:scora/src/shared/shared.dart';
import 'dart:developer' as developer;

final Soccer2ServiceProvider = Provider.autoDispose<Soccerr2Service>((ref) {
  final networkService = ref.watch(NetworkService3rdParty2Provider);
  final timeZone = ref.watch(timezoneProvider);
  return Soccerr2Service(networkService: networkService, timeZone: timeZone);
});

class Soccerr2Service {
  final NetworkService3rdParty2 networkService;
  final String timeZone;

  Soccerr2Service({required this.networkService, required this.timeZone});

  Future<Map<String, dynamic>> getFixture(
    String selectedDate,
  ) async {
    final response = await networkService.get('football', {
      "met": "Fixtures",
      "from": "$selectedDate",
      "to": "$selectedDate",
      "timezone": "$timeZone"
    });

    return response;
  }

  Future<Map<String, dynamic>> getFixtureByCountryId(
      String selectedDate, String countryId) async {
    final response = await networkService.get(
      'football',
      {
        "met": "Fixtures",
        "from": "$selectedDate",
        "to": "$selectedDate",
        "countryId": "$countryId",
        "timezone": "$timeZone"
      },
    );

    return response;
  }

  Future<Map<String, dynamic>> getFixtureByMatchId(
      {required String matchId}) async {
    final response = await networkService.get(
      'football',
      {"met": "Fixtures", "matchId": "$matchId", "timezone": "$timeZone"},
    );

    return response;
  }

  Future<Map<String, dynamic>> getFixtureByLeagueId(
      {required String startDate,
      required String endDate,
      required String leagueId}) async {
    final response = await networkService.get(
      'football',
      {
        "met": "Fixtures",
        "from": "$startDate",
        "to": "$endDate",
        "leagueId": "$leagueId",
        "timezone": "$timeZone"
      },
    );

    return response;
  }

  Future<Map<String, dynamic>> getLive() async {
    final response = await networkService.get(
      'football',
      {"met": "Livescore", "timezone": "$timeZone"},
    );

    return response;
  }

  Future<Map<String, dynamic>> getH2H(
      {required String firstTeamId, required String secondTeamId}) async {
    final response = await networkService.get(
      'football',
      {"met": "H2H",
        "timezone": "$timeZone",
        "firstTeamId": "$firstTeamId",
        "secondTeamId": "$secondTeamId"
      },
    );

    return response;
  }

  Future<Map<String, dynamic>> getStandings(
      {required String leagueId}) async {
    final response = await networkService.get(
      'football',
      {"met": "Standings",
        "leagueId":"$leagueId"
      },
    );

    return response;
  }

// void _storeToken (String token) async {
//   await prefService.setPref('token', token);
// }
}
