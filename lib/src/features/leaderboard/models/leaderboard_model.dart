import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_model.freezed.dart';
part 'leaderboard_model.g.dart';

@freezed
class LeaderboardResponse with _$LeaderboardResponse {
  const factory LeaderboardResponse({
     String? responseMessage,
    LeaderboardData? data,
  }) = _LeaderboardResponse;

  factory LeaderboardResponse.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardResponseFromJson(json);
}

@freezed
class LeaderboardData with _$LeaderboardData {
  const factory LeaderboardData({
    List<User>? topUsers,
    User? loggedInUser,
  }) = _LeaderboardData;

  factory LeaderboardData.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardDataFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
     String? rank,
     String? userId,
     String? username,
     int? sumPoint,
    // @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
