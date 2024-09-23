import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/home/Football/controller/soccer_tab_fixtures_controller.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/home/views/components/league_card.dart';
import 'dart:developer' as developer;

class TabFixtures extends HookConsumerWidget {
  final String leagueId;
  final String leagueName;

  const TabFixtures({required this.leagueId,required this.leagueName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabFixtureData =
        ref.watch(soccerTabFixturesControllerProvider(leagueId: leagueId));
    final size = MediaQuery.of(context).size;

    return tabFixtureData.when(
        data: (mapListFixtures) {
          if (mapListFixtures.isEmpty) {
            return Container(
              height: 100,
              child: Center(
                child: Text('No Fixtures available',
                  style: AppTextStyle.headlineSmall,
                ),
              ),
            );
          }
          return Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: mapListFixtures.keys.length,
                itemBuilder: (context, index) {
                  final date = mapListFixtures.keys.elementAt(index);
                  final List<SoccerFixtureResult> listFixture =
                      mapListFixtures[date]!;

                  final List<MatchDetails> listMatch =
                      List.generate(listFixture.length, (index) {
                    var match = listFixture[index];
                    return MatchDetails(
                      time: match.event_time ?? "-",
                      homeTeam: match.event_home_team ?? "-",
                      awayTeam: match.event_away_team ?? "-",
                      matchId: match.event_key.toString(),
                      event_status: match.event_status.toString(),
                      backgroundColor:
                          index % 2 == 0 ? Colors.white : Color(0xFFF8F9FA),
                      score: match.event_final_result ?? "-",
                    );
                  });

                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(date, style: AppTextStyle.title18),
                        SizedBox(
                          height: 24,
                        ),
                        MatchCard(
                          title: leagueName ?? "",
                          matchDetails: listMatch,
                          withButton: false,
                          predict: true,
                          leagueLogo: listFixture[0].league_logo ?? "",
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ]);
        },
        error: (error, stack) =>
            Center(child: Text('Error: ${error.toString()}')),
        loading: () => const Center(child: CircularProgressIndicator())
    );
  }
}
