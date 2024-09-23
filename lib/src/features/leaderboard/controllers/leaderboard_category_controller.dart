import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/leaderboard/models/leaderboard_category_model.dart';
import 'package:scora/src/features/leaderboard/models/leaderboard_model.dart';
import 'package:scora/src/features/leaderboard/services/leaderboard_service.dart';
import 'dart:developer' as developer;


part 'leaderboard_category_controller.g.dart';
@riverpod
class LeaderboardCategoryController extends _$LeaderboardCategoryController {
  @override
  Future<LeaderboardCategoryModel> build() async {
    return await getWeeklyLeaderboardCategory();
  }


  Future<LeaderboardCategoryModel> getWeeklyLeaderboardCategory() async {
    state = const AsyncValue.loading();
    try{
      final response = await ref.read(LeaderboardServiceProvider).getWeeklyLeaderboardCategory();
      final leaderbordResponse =  LeaderboardCategoryModel.fromJson(response);
      state = AsyncValue.data(leaderbordResponse);
      return leaderbordResponse;

    } catch(e){
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load weekly leaderboard: $e');
    }
  }

  Future<LeaderboardCategoryModel> getMonthlyCategoryLeaderboard() async {
    state = const AsyncValue.loading();
    try{
      final response = await ref.read(LeaderboardServiceProvider).getMonthlyLeaderboardCategory();

      final leaderbordResponse =  LeaderboardCategoryModel.fromJson(response);
      state = AsyncValue.data(leaderbordResponse);
      return leaderbordResponse;

    } catch(e){
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load monthly leaderboard: $e');
    }
  }

  Future<LeaderboardCategoryModel> getYearlyCategoryLeaderboard() async {
    state = const AsyncValue.loading();
    try{
      final response = await ref.read(LeaderboardServiceProvider).getYearlyLeaderboardCategory();

      final leaderbordResponse =  LeaderboardCategoryModel.fromJson(response);
      state = AsyncValue.data(leaderbordResponse);
      return leaderbordResponse;

    } catch(e){
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load yearly leaderboard: $e');
    }
  }
}