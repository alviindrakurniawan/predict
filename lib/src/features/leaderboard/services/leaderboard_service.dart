import 'package:http/http.dart' as http;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/shared/services/network_feature_service.dart';
import 'package:scora/src/shared/shared.dart';

final LeaderboardServiceProvider = Provider.autoDispose<LeaderboardService>((ref) {
  final networkService = ref.watch(NetworkFeatureServiceProvider);
  return LeaderboardService(networkService: networkService);
});

class LeaderboardService {
  final NetworkFeatureService networkService;

  LeaderboardService({required this.networkService});

  Future<Map<String, dynamic>> getWeeklyLeaderboard() async {
    final response = await networkService.get(
      '/leaderboard/weekly-leaderboard',
    );

    return response;
  }

  Future<Map<String, dynamic>> getMonthlyLeaderboard() async {
    final response = await networkService.get(
      '/leaderboard/monthly-leaderboard',
    );

    return response;
  }

  Future<Map<String, dynamic>> getYearlyLeaderboard() async {
    final response = await networkService.get(
      '/leaderboard/yearly-leaderboard',
    );

    return response;
  }


// void _storeToken (String token) async {
//   await prefService.setPref('token', token);
// }
}
