import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/home/controllers/soccer_fixture_controller.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/home/views/components/league_card.dart';
import 'package:scora/src/features/home/views/league_overview.dart';
import 'package:scora/src/shared/dto/soccer_overview_dto.dart';
import 'dart:developer' as developer;

import 'package:scora/src/shared/providers/timezone_provider.dart';

class ListSoccerLeague extends ConsumerWidget {
  const ListSoccerLeague({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final soccerFixtureState = ref.watch(soccerFixtureControllerProvider);
    final size = MediaQuery.of(context).size;
    return soccerFixtureState.when(
      data: (mapListFixtures) {
        developer.log('jumlah fixture: ${mapListFixtures.length.toString()} ');
        if (mapListFixtures.isEmpty) {
          return Container(
              width: double.infinity,
              height: size.height * 0.6,
              alignment: Alignment.center,
              child: Text('No fixtures available for the selected date.'));
        }
        return ListView.builder(
          itemCount: mapListFixtures.keys.length,
          itemBuilder: (context, index) {
            final title = mapListFixtures.keys.elementAt(index);
            final leagueName = title.split('+').first;
            final List<SoccerFixtureResult> listFixture =
                mapListFixtures[title]!;


            // final List<MatchDetails> listMatch = listFixture
            //     .map((match) => MatchDetails(
            //     time: match.event_time ?? "-",
            //     homeTeam: match.event_home_team?? "-",
            //     awayTeam: match.event_away_team ?? "-",
            //     backgroundColor: ,
            //     score: match.event_final_result ?? "-"))
            //     .toList();

            final List<MatchDetails> listMatch =
                List.generate(listFixture.length, (index) {
              var match = listFixture[index];
              return MatchDetails(
                time: match.event_time ?? "-",
                homeTeam: match.event_home_team ?? "-",
                awayTeam: match.event_away_team ?? "-",
                matchId: match.event_key.toString(),
                event_status: '${match.event_status.toString()}',
                event_live: match.event_live,
                backgroundColor:
                    index % 2 == 0 ? Colors.white : Color(0xFFF8F9FA),
                score: match.event_final_result ?? "-",
              );
            });
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: MatchCard(
                  title: leagueName,
                  predict: true,
                  leagueLogo: listFixture[0].league_logo ?? "",
                  onPressedIcon: () {
                    context.push(SoccerLeagueOverview.routeName,
                        extra: SoccerOverviewDTO(
                            title: title,
                            listMatch: listFixture,
                            listMatchCard: listMatch));
                  },
                  matchDetails: listMatch),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Container(
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          padding: EdgeInsets.all(16),
          height: size.height * 0.6,
          decoration: BoxDecoration(color: Color(0xFFF8F9FA)),
          child: Center(
              child: Text(
            '$error',
            style: context.titleSmall,
            textAlign: TextAlign.justify,
          ))),
    );
  }
}
