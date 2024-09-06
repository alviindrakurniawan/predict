// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get profilePicPath => throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;
  int? get countReferrals => throw _privateConstructorUsedError;
  int? get predictToken => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get walletAddress => throw _privateConstructorUsedError;
  int? get countryId => throw _privateConstructorUsedError;
  String? get discordToken => throw _privateConstructorUsedError;
  String? get twitterToken => throw _privateConstructorUsedError;
  String? get twitterUsername => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  String? get deviceToken => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String? id,
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
      String? deviceToken});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? profilePicPath = freezed,
    Object? referralCode = freezed,
    Object? countReferrals = freezed,
    Object? predictToken = freezed,
    Object? dob = freezed,
    Object? walletAddress = freezed,
    Object? countryId = freezed,
    Object? discordToken = freezed,
    Object? twitterToken = freezed,
    Object? twitterUsername = freezed,
    Object? isEmailVerified = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicPath: freezed == profilePicPath
          ? _value.profilePicPath
          : profilePicPath // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countReferrals: freezed == countReferrals
          ? _value.countReferrals
          : countReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      predictToken: freezed == predictToken
          ? _value.predictToken
          : predictToken // ignore: cast_nullable_to_non_nullable
              as int?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      walletAddress: freezed == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      discordToken: freezed == discordToken
          ? _value.discordToken
          : discordToken // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterToken: freezed == twitterToken
          ? _value.twitterToken
          : twitterToken // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      String? deviceToken});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? profilePicPath = freezed,
    Object? referralCode = freezed,
    Object? countReferrals = freezed,
    Object? predictToken = freezed,
    Object? dob = freezed,
    Object? walletAddress = freezed,
    Object? countryId = freezed,
    Object? discordToken = freezed,
    Object? twitterToken = freezed,
    Object? twitterUsername = freezed,
    Object? isEmailVerified = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicPath: freezed == profilePicPath
          ? _value.profilePicPath
          : profilePicPath // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countReferrals: freezed == countReferrals
          ? _value.countReferrals
          : countReferrals // ignore: cast_nullable_to_non_nullable
              as int?,
      predictToken: freezed == predictToken
          ? _value.predictToken
          : predictToken // ignore: cast_nullable_to_non_nullable
              as int?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      walletAddress: freezed == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      discordToken: freezed == discordToken
          ? _value.discordToken
          : discordToken // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterToken: freezed == twitterToken
          ? _value.twitterToken
          : twitterToken // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.name,
      this.username,
      this.email,
      this.phone,
      this.profilePicPath,
      this.referralCode,
      this.countReferrals,
      this.predictToken,
      this.dob,
      this.walletAddress,
      this.countryId,
      this.discordToken,
      this.twitterToken,
      this.twitterUsername,
      this.isEmailVerified,
      this.deviceToken});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? profilePicPath;
  @override
  final String? referralCode;
  @override
  final int? countReferrals;
  @override
  final int? predictToken;
  @override
  final String? dob;
  @override
  final String? walletAddress;
  @override
  final int? countryId;
  @override
  final String? discordToken;
  @override
  final String? twitterToken;
  @override
  final String? twitterUsername;
  @override
  final bool? isEmailVerified;
  @override
  final String? deviceToken;

  @override
  String toString() {
    return 'UserModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, name: $name, username: $username, email: $email, phone: $phone, profilePicPath: $profilePicPath, referralCode: $referralCode, countReferrals: $countReferrals, predictToken: $predictToken, dob: $dob, walletAddress: $walletAddress, countryId: $countryId, discordToken: $discordToken, twitterToken: $twitterToken, twitterUsername: $twitterUsername, isEmailVerified: $isEmailVerified, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profilePicPath, profilePicPath) ||
                other.profilePicPath == profilePicPath) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.countReferrals, countReferrals) ||
                other.countReferrals == countReferrals) &&
            (identical(other.predictToken, predictToken) ||
                other.predictToken == predictToken) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.discordToken, discordToken) ||
                other.discordToken == discordToken) &&
            (identical(other.twitterToken, twitterToken) ||
                other.twitterToken == twitterToken) &&
            (identical(other.twitterUsername, twitterUsername) ||
                other.twitterUsername == twitterUsername) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        deletedAt,
        name,
        username,
        email,
        phone,
        profilePicPath,
        referralCode,
        countReferrals,
        predictToken,
        dob,
        walletAddress,
        countryId,
        discordToken,
        twitterToken,
        twitterUsername,
        isEmailVerified,
        deviceToken
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final String? id,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt,
      final String? name,
      final String? username,
      final String? email,
      final String? phone,
      final String? profilePicPath,
      final String? referralCode,
      final int? countReferrals,
      final int? predictToken,
      final String? dob,
      final String? walletAddress,
      final int? countryId,
      final String? discordToken,
      final String? twitterToken,
      final String? twitterUsername,
      final bool? isEmailVerified,
      final String? deviceToken}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;
  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get profilePicPath;
  @override
  String? get referralCode;
  @override
  int? get countReferrals;
  @override
  int? get predictToken;
  @override
  String? get dob;
  @override
  String? get walletAddress;
  @override
  int? get countryId;
  @override
  String? get discordToken;
  @override
  String? get twitterToken;
  @override
  String? get twitterUsername;
  @override
  bool? get isEmailVerified;
  @override
  String? get deviceToken;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
