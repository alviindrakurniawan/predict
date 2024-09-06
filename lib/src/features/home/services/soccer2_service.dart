import 'package:http/http.dart' as http;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/shared/services/network_serice_3rdparty2.dart';
import 'package:scora/src/shared/services/network_service_3rdparty.dart';
import 'package:scora/src/shared/shared.dart';

final Soccer2ServiceProvider = Provider.autoDispose<Soccerr2Service>((ref) {
  final networkService = ref.watch(NetworkService3rdParty2Provider);

  return Soccerr2Service(networkService: networkService);
});

class Soccerr2Service {
  final NetworkService3rdParty2 networkService;

  Soccerr2Service({required this.networkService});

  Future<Map<String, dynamic>> getFixture(
    String selectedDate,
  ) async {
    final response = await networkService.get('football',
        {"met": "Fixtures", "from": "$selectedDate", "to": "$selectedDate"});

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
        "countryId": "$countryId"
      },
    );

    return response;
  }

  Future<Map<String, dynamic>> getFixtureByMatchId({required String matchId}) async {
    final response = await networkService.get(
      'football',
      {
        "met": "Fixtures",
        "matchId": "$matchId"
      },
    );

    return response;
  }

  Future<Map<String, dynamic>> getFixtureByLeagueId({
      required String startDate, required String endDate,required String leagueId}) async {
    final response = await networkService.get(
      'football',
      {
        "met": "Fixtures",
        "from": "$startDate",
        "to": "$endDate",
        "leagueId": "$leagueId"
      },
    );

    return response;
  }

  Future<Map<String, dynamic>> getLive() async {
    final response = await networkService.get(
      'football',
      {
        "met": "Livescore",
      },
    );

    return response;
  }

// void _storeToken (String token) async {
//   await prefService.setPref('token', token);
// }
}
