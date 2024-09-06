// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaderboardResponse _$LeaderboardResponseFromJson(Map<String, dynamic> json) {
  return _LeaderboardResponse.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardResponse {
  String? get responseMessage => throw _privateConstructorUsedError;
  LeaderboardData? get data => throw _privateConstructorUsedError;

  /// Serializes this LeaderboardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardResponseCopyWith<LeaderboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardResponseCopyWith<$Res> {
  factory $LeaderboardResponseCopyWith(
          LeaderboardResponse value, $Res Function(LeaderboardResponse) then) =
      _$LeaderboardResponseCopyWithImpl<$Res, LeaderboardResponse>;
  @useResult
  $Res call({String? responseMessage, LeaderboardData? data});

  $LeaderboardDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LeaderboardResponseCopyWithImpl<$Res, $Val extends LeaderboardResponse>
    implements $LeaderboardResponseCopyWith<$Res> {
  _$LeaderboardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LeaderboardData?,
    ) as $Val);
  }

  /// Create a copy of LeaderboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaderboardDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LeaderboardDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaderboardResponseImplCopyWith<$Res>
    implements $LeaderboardResponseCopyWith<$Res> {
  factory _$$LeaderboardResponseImplCopyWith(_$LeaderboardResponseImpl value,
          $Res Function(_$LeaderboardResponseImpl) then) =
      __$$LeaderboardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? responseMessage, LeaderboardData? data});

  @override
  $LeaderboardDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LeaderboardResponseImplCopyWithImpl<$Res>
    extends _$LeaderboardResponseCopyWithImpl<$Res, _$LeaderboardResponseImpl>
    implements _$$LeaderboardResponseImplCopyWith<$Res> {
  __$$LeaderboardResponseImplCopyWithImpl(_$LeaderboardResponseImpl _value,
      $Res Function(_$LeaderboardResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LeaderboardResponseImpl(
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LeaderboardData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardResponseImpl implements _LeaderboardResponse {
  const _$LeaderboardResponseImpl({this.responseMessage, this.data});

  factory _$LeaderboardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardResponseImplFromJson(json);

  @override
  final String? responseMessage;
  @override
  final LeaderboardData? data;

  @override
  String toString() {
    return 'LeaderboardResponse(responseMessage: $responseMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardResponseImpl &&
            (identical(other.responseMessage, responseMessage) ||
                other.responseMessage == responseMessage) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responseMessage, data);

  /// Create a copy of LeaderboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardResponseImplCopyWith<_$LeaderboardResponseImpl> get copyWith =>
      __$$LeaderboardResponseImplCopyWithImpl<_$LeaderboardResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardResponseImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardResponse implements LeaderboardResponse {
  const factory _LeaderboardResponse(
      {final String? responseMessage,
      final LeaderboardData? data}) = _$LeaderboardResponseImpl;

  factory _LeaderboardResponse.fromJson(Map<String, dynamic> json) =
      _$LeaderboardResponseImpl.fromJson;

  @override
  String? get responseMessage;
  @override
  LeaderboardData? get data;

  /// Create a copy of LeaderboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardResponseImplCopyWith<_$LeaderboardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaderboardData _$LeaderboardDataFromJson(Map<String, dynamic> json) {
  return _LeaderboardData.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardData {
  List<User>? get topUsers => throw _privateConstructorUsedError;
  User? get loggedInUser => throw _privateConstructorUsedError;

  /// Serializes this LeaderboardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardDataCopyWith<LeaderboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardDataCopyWith<$Res> {
  factory $LeaderboardDataCopyWith(
          LeaderboardData value, $Res Function(LeaderboardData) then) =
      _$LeaderboardDataCopyWithImpl<$Res, LeaderboardData>;
  @useResult
  $Res call({List<User>? topUsers, User? loggedInUser});

  $UserCopyWith<$Res>? get loggedInUser;
}

/// @nodoc
class _$LeaderboardDataCopyWithImpl<$Res, $Val extends LeaderboardData>
    implements $LeaderboardDataCopyWith<$Res> {
  _$LeaderboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topUsers = freezed,
    Object? loggedInUser = freezed,
  }) {
    return _then(_value.copyWith(
      topUsers: freezed == topUsers
          ? _value.topUsers
          : topUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      loggedInUser: freezed == loggedInUser
          ? _value.loggedInUser
          : loggedInUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of LeaderboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get loggedInUser {
    if (_value.loggedInUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.loggedInUser!, (value) {
      return _then(_value.copyWith(loggedInUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaderboardDataImplCopyWith<$Res>
    implements $LeaderboardDataCopyWith<$Res> {
  factory _$$LeaderboardDataImplCopyWith(_$LeaderboardDataImpl value,
          $Res Function(_$LeaderboardDataImpl) then) =
      __$$LeaderboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User>? topUsers, User? loggedInUser});

  @override
  $UserCopyWith<$Res>? get loggedInUser;
}

/// @nodoc
class __$$LeaderboardDataImplCopyWithImpl<$Res>
    extends _$LeaderboardDataCopyWithImpl<$Res, _$LeaderboardDataImpl>
    implements _$$LeaderboardDataImplCopyWith<$Res> {
  __$$LeaderboardDataImplCopyWithImpl(
      _$LeaderboardDataImpl _value, $Res Function(_$LeaderboardDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topUsers = freezed,
    Object? loggedInUser = freezed,
  }) {
    return _then(_$LeaderboardDataImpl(
      topUsers: freezed == topUsers
          ? _value._topUsers
          : topUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      loggedInUser: freezed == loggedInUser
          ? _value.loggedInUser
          : loggedInUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardDataImpl implements _LeaderboardData {
  const _$LeaderboardDataImpl({final List<User>? topUsers, this.loggedInUser})
      : _topUsers = topUsers;

  factory _$LeaderboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardDataImplFromJson(json);

  final List<User>? _topUsers;
  @override
  List<User>? get topUsers {
    final value = _topUsers;
    if (value == null) return null;
    if (_topUsers is EqualUnmodifiableListView) return _topUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final User? loggedInUser;

  @override
  String toString() {
    return 'LeaderboardData(topUsers: $topUsers, loggedInUser: $loggedInUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardDataImpl &&
            const DeepCollectionEquality().equals(other._topUsers, _topUsers) &&
            (identical(other.loggedInUser, loggedInUser) ||
                other.loggedInUser == loggedInUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_topUsers), loggedInUser);

  /// Create a copy of LeaderboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardDataImplCopyWith<_$LeaderboardDataImpl> get copyWith =>
      __$$LeaderboardDataImplCopyWithImpl<_$LeaderboardDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardDataImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardData implements LeaderboardData {
  const factory _LeaderboardData(
      {final List<User>? topUsers,
      final User? loggedInUser}) = _$LeaderboardDataImpl;

  factory _LeaderboardData.fromJson(Map<String, dynamic> json) =
      _$LeaderboardDataImpl.fromJson;

  @override
  List<User>? get topUsers;
  @override
  User? get loggedInUser;

  /// Create a copy of LeaderboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardDataImplCopyWith<_$LeaderboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get rank => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  int? get sumPoint => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String? rank, String? userId, String? username, int? sumPoint});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? sumPoint = freezed,
  }) {
    return _then(_value.copyWith(
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      sumPoint: freezed == sumPoint
          ? _value.sumPoint
          : sumPoint // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rank, String? userId, String? username, int? sumPoint});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? sumPoint = freezed,
  }) {
    return _then(_$UserImpl(
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      sumPoint: freezed == sumPoint
          ? _value.sumPoint
          : sumPoint // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({this.rank, this.userId, this.username, this.sumPoint});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? rank;
  @override
  final String? userId;
  @override
  final String? username;
  @override
  final int? sumPoint;

  @override
  String toString() {
    return 'User(rank: $rank, userId: $userId, username: $username, sumPoint: $sumPoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.sumPoint, sumPoint) ||
                other.sumPoint == sumPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rank, userId, username, sumPoint);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? rank,
      final String? userId,
      final String? username,
      final int? sumPoint}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get rank;
  @override
  String? get userId;
  @override
  String? get username;
  @override
  int? get sumPoint;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
