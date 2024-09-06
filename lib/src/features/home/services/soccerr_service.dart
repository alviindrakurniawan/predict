import 'package:http/http.dart' as http;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/shared/services/network_service_3rdparty.dart';
import 'package:scora/src/shared/shared.dart';

final SoccerServiceProvider = Provider.autoDispose<SoccerrService>((ref) {
  final networkService = ref.watch(NetworkService3rdPartyProvider);


  return SoccerrService(networkService: networkService);
});


class SoccerrService{
  final NetworkService3rdParty networkService;


  SoccerrService({required this.networkService});

  Future<Map<String, dynamic>> getLeagueList() async {
    final response = await networkService.get(
      '/soccerfixtures/data/mapping?json=true',
    );

    return response;
  }



// void _storeToken (String token) async {
//   await prefService.setPref('token', token);
// }

}