import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_category_model.freezed.dart';
part 'leaderboard_category_model.g.dart';

@freezed
class LeaderboardCategoryModel with _$LeaderboardCategoryModel {
  const factory LeaderboardCategoryModel({
     String? responseMessage,
     LeaderboardCategoryData? data,
  }) = _LeaderboardCategoryModel;


  factory LeaderboardCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardCategoryModelFromJson(json);
}

@freezed
class LeaderboardCategoryData with _$LeaderboardCategoryData {
  const factory LeaderboardCategoryData({
    required List<Category> category,
  }) = _LeaderboardCategoryData;

  factory LeaderboardCategoryData.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardCategoryDataFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
