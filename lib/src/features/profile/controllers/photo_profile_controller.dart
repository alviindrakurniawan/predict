import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/leaderboard/models/leaderboard_model.dart';
import 'package:scora/src/features/leaderboard/services/leaderboard_service.dart';
import 'dart:developer' as developer;


part 'photo_profile_controller.g.dart';
@riverpod
class PhotoProfileController extends _$PhotoProfileController {
  @override
  Future<LeaderboardResponse> build() async {
    return await getWeeklyLeaderboard();
  }

  Future<LeaderboardResponse> getWeeklyLeaderboard() async {
    state = const AsyncValue.loading();
    developer.log("weekly masok");
    try{
      final response = await ref.read(LeaderboardServiceProvider).getWeeklyLeaderboard();
      developer.log("weekly response $response");

      final leaderbordResponse =  LeaderboardResponse.fromJson(response);
      developer.log("weekly leaderbordResponse $leaderbordResponse");
      state = AsyncValue.data(leaderbordResponse);
      return leaderbordResponse;

    } catch(e){
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load weekly leaderboard: $e');
    }
  }

  Future<LeaderboardResponse> getMonthlyLeaderboard() async {
    state = const AsyncValue.loading();
    try{
      final response = await ref.read(LeaderboardServiceProvider).getMonthlyLeaderboard();

      final leaderbordResponse =  LeaderboardResponse.fromJson(response);
      state = AsyncValue.data(leaderbordResponse);
      return leaderbordResponse;

    } catch(e){
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load monthly leaderboard: $e');
    }
  }

  Future<LeaderboardResponse> getYearlyLeaderboard() async {
    state = const AsyncValue.loading();
    try{
      final response = await ref.read(LeaderboardServiceProvider).getYearlyLeaderboard();

      final leaderbordResponse =  LeaderboardResponse.fromJson(response);
      state = AsyncValue.data(leaderbordResponse);
      return leaderbordResponse;

    } catch(e){
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load yearly leaderboard: $e');
    }
  }
}