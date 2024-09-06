import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? id,
     String? createdAt,
     String? updatedAt,
    String? deletedAt,
    String? name,
     String? username,
     String? email,
    String? phone,
    String? profilePicPath,
     String? referralCode,
     int? countReferrals,
     int? predictToken,
    String? dob,
    String? walletAddress,
    int? countryId,
    String? discordToken,
    String? twitterToken,
    String? twitterUsername,
     bool? isEmailVerified,
    String? deviceToken
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
