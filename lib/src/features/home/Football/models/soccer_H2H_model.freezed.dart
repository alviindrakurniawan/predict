// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'soccer_H2H_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SoccerH2HModel _$SoccerH2HModelFromJson(Map<String, dynamic> json) {
  return _SoccerH2HModel.fromJson(json);
}

/// @nodoc
mixin _$SoccerH2HModel {
  int? get success => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this SoccerH2HModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoccerH2HModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoccerH2HModelCopyWith<SoccerH2HModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerH2HModelCopyWith<$Res> {
  factory $SoccerH2HModelCopyWith(
          SoccerH2HModel value, $Res Function(SoccerH2HModel) then) =
      _$SoccerH2HModelCopyWithImpl<$Res, SoccerH2HModel>;
  @useResult
  $Res call({int? success, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$SoccerH2HModelCopyWithImpl<$Res, $Val extends SoccerH2HModel>
    implements $SoccerH2HModelCopyWith<$Res> {
  _$SoccerH2HModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoccerH2HModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  /// Create a copy of SoccerH2HModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SoccerH2HModelImplCopyWith<$Res>
    implements $SoccerH2HModelCopyWith<$Res> {
  factory _$$SoccerH2HModelImplCopyWith(_$SoccerH2HModelImpl value,
          $Res Function(_$SoccerH2HModelImpl) then) =
      __$$SoccerH2HModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? success, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$SoccerH2HModelImplCopyWithImpl<$Res>
    extends _$SoccerH2HModelCopyWithImpl<$Res, _$SoccerH2HModelImpl>
    implements _$$SoccerH2HModelImplCopyWith<$Res> {
  __$$SoccerH2HModelImplCopyWithImpl(
      _$SoccerH2HModelImpl _value, $Res Function(_$SoccerH2HModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoccerH2HModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SoccerH2HModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerH2HModelImpl implements _SoccerH2HModel {
  const _$SoccerH2HModelImpl({this.success, this.result});

  factory _$SoccerH2HModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerH2HModelImplFromJson(json);

  @override
  final int? success;
  @override
  final Result? result;

  @override
  String toString() {
    return 'SoccerH2HModel(success: $success, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerH2HModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, result);

  /// Create a copy of SoccerH2HModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerH2HModelImplCopyWith<_$SoccerH2HModelImpl> get copyWith =>
      __$$SoccerH2HModelImplCopyWithImpl<_$SoccerH2HModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerH2HModelImplToJson(
      this,
    );
  }
}

abstract class _SoccerH2HModel implements SoccerH2HModel {
  const factory _SoccerH2HModel({final int? success, final Result? result}) =
      _$SoccerH2HModelImpl;

  factory _SoccerH2HModel.fromJson(Map<String, dynamic> json) =
      _$SoccerH2HModelImpl.fromJson;

  @override
  int? get success;
  @override
  Result? get result;

  /// Create a copy of SoccerH2HModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoccerH2HModelImplCopyWith<_$SoccerH2HModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<SoccerFixtureResult>? get H2H => throw _privateConstructorUsedError;
  List<SoccerFixtureResult>? get firstTeamResults =>
      throw _privateConstructorUsedError;
  List<SoccerFixtureResult>? get secondTeamResults =>
      throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {List<SoccerFixtureResult>? H2H,
      List<SoccerFixtureResult>? firstTeamResults,
      List<SoccerFixtureResult>? secondTeamResults});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? H2H = freezed,
    Object? firstTeamResults = freezed,
    Object? secondTeamResults = freezed,
  }) {
    return _then(_value.copyWith(
      H2H: freezed == H2H
          ? _value.H2H
          : H2H // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureResult>?,
      firstTeamResults: freezed == firstTeamResults
          ? _value.firstTeamResults
          : firstTeamResults // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureResult>?,
      secondTeamResults: freezed == secondTeamResults
          ? _value.secondTeamResults
          : secondTeamResults // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SoccerFixtureResult>? H2H,
      List<SoccerFixtureResult>? firstTeamResults,
      List<SoccerFixtureResult>? secondTeamResults});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? H2H = freezed,
    Object? firstTeamResults = freezed,
    Object? secondTeamResults = freezed,
  }) {
    return _then(_$ResultImpl(
      H2H: freezed == H2H
          ? _value._H2H
          : H2H // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureResult>?,
      firstTeamResults: freezed == firstTeamResults
          ? _value._firstTeamResults
          : firstTeamResults // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureResult>?,
      secondTeamResults: freezed == secondTeamResults
          ? _value._secondTeamResults
          : secondTeamResults // ignore: cast_nullable_to_non_nullable
              as List<SoccerFixtureResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {final List<SoccerFixtureResult>? H2H,
      final List<SoccerFixtureResult>? firstTeamResults,
      final List<SoccerFixtureResult>? secondTeamResults})
      : _H2H = H2H,
        _firstTeamResults = firstTeamResults,
        _secondTeamResults = secondTeamResults;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  final List<SoccerFixtureResult>? _H2H;
  @override
  List<SoccerFixtureResult>? get H2H {
    final value = _H2H;
    if (value == null) return null;
    if (_H2H is EqualUnmodifiableListView) return _H2H;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SoccerFixtureResult>? _firstTeamResults;
  @override
  List<SoccerFixtureResult>? get firstTeamResults {
    final value = _firstTeamResults;
    if (value == null) return null;
    if (_firstTeamResults is EqualUnmodifiableListView)
      return _firstTeamResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SoccerFixtureResult>? _secondTeamResults;
  @override
  List<SoccerFixtureResult>? get secondTeamResults {
    final value = _secondTeamResults;
    if (value == null) return null;
    if (_secondTeamResults is EqualUnmodifiableListView)
      return _secondTeamResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(H2H: $H2H, firstTeamResults: $firstTeamResults, secondTeamResults: $secondTeamResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality().equals(other._H2H, _H2H) &&
            const DeepCollectionEquality()
                .equals(other._firstTeamResults, _firstTeamResults) &&
            const DeepCollectionEquality()
                .equals(other._secondTeamResults, _secondTeamResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_H2H),
      const DeepCollectionEquality().hash(_firstTeamResults),
      const DeepCollectionEquality().hash(_secondTeamResults));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final List<SoccerFixtureResult>? H2H,
      final List<SoccerFixtureResult>? firstTeamResults,
      final List<SoccerFixtureResult>? secondTeamResults}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  List<SoccerFixtureResult>? get H2H;
  @override
  List<SoccerFixtureResult>? get firstTeamResults;
  @override
  List<SoccerFixtureResult>? get secondTeamResults;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
