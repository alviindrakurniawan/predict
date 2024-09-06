// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      profilePicPath: json['profilePicPath'] as String?,
      referralCode: json['referralCode'] as String?,
      countReferrals: (json['countReferrals'] as num?)?.toInt(),
      predictToken: (json['predictToken'] as num?)?.toInt(),
      dob: json['dob'] as String?,
      walletAddress: json['walletAddress'] as String?,
      countryId: (json['countryId'] as num?)?.toInt(),
      discordToken: json['discordToken'] as String?,
      twitterToken: json['twitterToken'] as String?,
      twitterUsername: json['twitterUsername'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      deviceToken: json['deviceToken'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'profilePicPath': instance.profilePicPath,
      'referralCode': instance.referralCode,
      'countReferrals': instance.countReferrals,
      'predictToken': instance.predictToken,
      'dob': instance.dob,
      'walletAddress': instance.walletAddress,
      'countryId': instance.countryId,
      'discordToken': instance.discordToken,
      'twitterToken': instance.twitterToken,
      'twitterUsername': instance.twitterUsername,
      'isEmailVerified': instance.isEmailVerified,
      'deviceToken': instance.deviceToken,
    };
