import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/home/Football/models/substitution_model.dart';
import 'package:scora/src/features/home/Football/views/components/widget_stats.dart';
import 'package:scora/src/features/home/Football/views/components/widget_substituion.dart';
import 'package:scora/src/features/home/Football/views/components/widget_substitute.dart';
import 'package:scora/src/features/home/Football/views/components/widget_substitute_reverse.dart';
import 'package:scora/src/shared/widgets/widget_no_data.dart';
import 'dart:developer' as developer;

class TabLineups extends HookConsumerWidget {
  final SoccerFixtureResult fixture;

  const TabLineups({super.key, required this.fixture});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    final listSubstitutionHome = useState<List<SoccerFixtureSubstitute>>([]);
    final listSubstitutionAway = useState<List<SoccerFixtureSubstitute>>([]);

    final listHomeStartingLineUp = useState<List<SoccerFixturePlayer>>([]);
    final listAwayStartingLineUp = useState<List<SoccerFixturePlayer>>([]);

    void createListSubstitution(SoccerFixtureResult fixture) {
      fixture.substitutes?.forEach((SoccerFixtureSubstitute data) {
        developer.log("data  scorer: ${data.home_scorer}");
        if (data.home_scorer is List) {
          developer.log("data away scorer: ${data.away_scorer}");
          listSubstitutionAway.value = List.from(listSubstitutionAway.value)
            ..add(data);
          // listSubstitutionHome.value.add(data);
        } else if (data.away_scorer is List) {
          listSubstitutionHome.value = List.from(listSubstitutionHome.value)
            ..add(data);
          // listSubstitutionAway.value.add(data);
        }
      });

      listSubstitutionAway.value.sort((a, b) {
        return a.time!.compareTo(b.time!);
      });
      listSubstitutionHome.value.sort((a, b) {
        return a.time!.compareTo(b.time!);
      });
    }

    void sortStartingLineup(SoccerFixtureResult fixture) {
      if (fixture?.lineups?.home_team?.starting_lineups != null) {
        listHomeStartingLineUp.value = List.from(fixture.lineups!.home_team!.starting_lineups as List)
          ..sort((a, b) => (a.player_position ?? 0).compareTo(b.player_position ?? 0));
      }
      if (fixture?.lineups?.away_team?.starting_lineups != null) {
        // Make a copy of the list and then sort it
        listAwayStartingLineUp.value = List.from(fixture.lineups!.away_team!.starting_lineups as List)
          ..sort((a, b) => (a.player_position ?? 0).compareTo(b.player_position ?? 0));
      }

    }


    useEffect(() {
      createListSubstitution(fixture);
      sortStartingLineup(fixture);

      return null;
    }, []);

    developer.log(fixture.statistics.toString());
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            child: (fixture.statistics?.isEmpty ?? true)
                ? WidgetNoData()
                : SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 28),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color(0xFFF8F9FA),
                            border: Border.all(color: Color(0xFFEEEEEE)),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SUBSTITUTIONS',
                              style: AppTextStyle.title18,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFEEEEEE),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: listSubstitutionHome.value
                                        .map((SoccerFixtureSubstitute data) {
                                      developer.log("data uyy$data");
                                      return WidgetSubstitution(
                                          time: data.time ?? "",
                                          playerIn: (data.home_scorer
                                                      as SoccerFixtureScorer?)
                                                  ?.inPlayer ??
                                              "",
                                          playerOut: (data.home_scorer
                                                      as SoccerFixtureScorer?)
                                                  ?.outPlayer ??
                                              "");
                                    }).toList(),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: listSubstitutionAway.value
                                        .map((SoccerFixtureSubstitute data) {
                                      developer.log("data uyy$data");
                                      return WidgetSubstitution(
                                          time: data.time ?? "",
                                          playerIn: (data.away_scorer
                                                      as SoccerFixtureScorer?)
                                                  ?.inPlayer ??
                                              "",
                                          playerOut: (data.away_scorer
                                                      as SoccerFixtureScorer?)
                                                  ?.outPlayer ??
                                              "");
                                    }).toList(),
                                  ),
                                )
                              ],
                            ),

                            // WidgetSubstitution()
                          ],
                        ),
                      )
                    ]),
                  )),
        SizedBox(
            width: double.infinity,
            child: (fixture.lineups?.home_team?.substitutes?.isEmpty == true &&
                    fixture.lineups?.away_team?.substitutes?.isEmpty == true)
                ? Container()
                : SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color(0xFFF8F9FA),
                            border: Border.all(color: Color(0xFFEEEEEE)),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'STARTING LINEUP',
                              style: AppTextStyle.title18,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFEEEEEE),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  fixture?.event_home_team ?? "",
                                  style: context.titleMedium,
                                ),
                                Text(
                                  fixture?.event_away_team ?? "",
                                  style: context.titleMedium,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: listHomeStartingLineUp.value
                                              ?.map((data) {
                                            developer
                                                .log('away lineup : $data');
                                            return WidgetSubstitute(
                                                number: data.player_number
                                                    .toString(),
                                                player: data.player ?? "");
                                          }).toList() ??
                                          []),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: listAwayStartingLineUp.value
                                              ?.map((data) {
                                            developer
                                                .log('away lineup : $data');
                                            return WidgetSubstituteReverse(
                                                number: data.player_number
                                                    .toString(),
                                                player: data.player ?? "");
                                          }).toList() ??
                                          []),
                                )
                              ],
                            ),

                            // WidgetSubstitution()
                          ],
                        ),
                      )
                    ]),
                  )),
        SizedBox(
            width: double.infinity,
            child: (fixture.lineups?.home_team?.substitutes?.isEmpty == true &&
                    fixture.lineups?.away_team?.substitutes?.isEmpty == true)
                ? Container()
                : SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 28),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color(0xFFF8F9FA),
                            border: Border.all(color: Color(0xFFEEEEEE)),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SUBSTITUTE PLAYERS',
                              style: AppTextStyle.title18,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFEEEEEE),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: fixture
                                              .lineups?.home_team?.substitutes
                                              ?.map((data) {
                                            developer
                                                .log('away lineup : $data');
                                            return WidgetSubstitute(
                                                number: data.player_number
                                                    .toString(),
                                                player: data.player ?? "");
                                          }).toList() ??
                                          []),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: fixture
                                              .lineups?.away_team?.substitutes
                                              ?.map((data) {
                                            developer
                                                .log('away lineup : $data');
                                            return WidgetSubstitute(
                                                number: data.player_number
                                                    .toString(),
                                                player: data.player ?? "");
                                          }).toList() ??
                                          []),
                                )
                              ],
                            ),

                            // WidgetSubstitution()
                          ],
                        ),
                      )
                    ]),
                  )),
      ],
    );
  }
}
