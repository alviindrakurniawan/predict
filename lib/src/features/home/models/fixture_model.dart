import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixture_model.freezed.dart';

part 'fixture_model.g.dart';

@freezed
class Fixture with _$Fixture {
  const factory Fixture({
     String? country,
     String? dateEnd,
     String? dateStart,
     String? id,
     bool? isWomen,
     bool? isCup,
     bool? liveLineups,
     bool? liveStats,
     String? name,
     String? path,
     String? season,
  }) = _Fixture;

  factory Fixture.fromJson(Map<String, dynamic> json) =>
      _$FixtureFromJson(json);
}
