import 'package:exposed/extensions/extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/home/Football/models/top_score_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:scora/src/features/home/controllers/selected_date_controller.dart';
import 'package:scora/src/features/home/controllers/soccer_fixture_controller.dart';
import 'package:scora/src/features/home/models/soccer_fixture.dart';
import 'package:scora/src/features/home/views/components/league_card.dart';
import 'package:scora/src/features/home/views/detail_league.dart';
import 'package:scora/src/shared/dto/soccer_league_dto.dart';
import 'package:scora/src/shared/dto/soccer_overview_dto.dart';
import 'dart:developer' as developer;

class SoccerLeagueOverview extends HookConsumerWidget {
  SoccerLeagueOverview({
    Key? key,
    required this.soccerOverviewDTO,
  }) : super(key: key);

  final SoccerOverviewDTO soccerOverviewDTO;

  static const routeName = '/league-overview';

  void sortMatchDetailsByTimeAsc(List<MatchDetails> matchDetails) {
    matchDetails.sort((a, b) {
      final timeA = DateFormat('HH:mm').parse(a.time);
      final timeB = DateFormat('HH:mm').parse(b.time);
      return timeA.compareTo(timeB);
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topScorers = useState<Map<String, List<TopScorer>>>({});

    final String title = soccerOverviewDTO.title;
    final List<SoccerFixtureResult>? listMatch = soccerOverviewDTO.listMatch;

    final List<MatchDetails> listMatchCard = soccerOverviewDTO.listMatchCard;
    sortMatchDetailsByTimeAsc(listMatchCard);
    final selectedDate = ref.read(selectedDateControllerProvider);
    final isLive = ref.read(isLiveProvider);

    final size= MediaQuery.of(context).size;
    developer.log('List Match: $listMatch');

    void calculateTopScorer() {
      final Map<String, Map<String, int>> scorerMap = {};

      if (listMatch != null) {
        for (var fixture in listMatch!) {
          for (var goal in fixture.goalscorers ?? []) {
            if (goal.home_scorer != null && goal.home_scorer!.isNotEmpty) {
              final String team = fixture.event_home_team ?? "";
              if (!scorerMap.containsKey(goal.home_scorer!)) {
                scorerMap[goal.home_scorer!] = {};
              }
              scorerMap[goal.home_scorer!]![team] =
                  (scorerMap[goal.home_scorer!]![team] ?? 0) + 1;
            }
            if (goal.away_scorer != null && goal.away_scorer!.isNotEmpty) {
              final String team = fixture.event_away_team ?? "-";
              if (!scorerMap.containsKey(goal.away_scorer!)) {
                scorerMap[goal.away_scorer!] = {};
              }
              scorerMap[goal.away_scorer!]![team] =
                  (scorerMap[goal.away_scorer!]![team] ?? 0) + 1;
            }
          }
        }
        developer.log('Scorer Map: $scorerMap');

        // Flatten the map and sort players by goals scored
        final List<TopScorer> flatTopScorers = [];

        for (var playerEntry in scorerMap.entries) {
          final playerName = playerEntry.key;
          for (var teamEntry in playerEntry.value.entries) {
            final teamName = teamEntry.key;
            final goalCount = teamEntry.value;
            flatTopScorers.add(TopScorer(playerName, goalCount, teamName));
          }
        }

        // Sort the flat list by goals in descending order
        flatTopScorers.sort((a, b) => b.goal.compareTo(a.goal));

        // Group by rank (converted to String)
        final Map<String, List<TopScorer>> rankedTopScorers = {};

        for (var i = 0; i < flatTopScorers.length; i++) {
          final rank =
              (i + 1).toString(); // Rank starts at 1, converted to String
          if (!rankedTopScorers.containsKey(rank)) {
            rankedTopScorers[rank] = [];
          }
          rankedTopScorers[rank]!.add(flatTopScorers[i]);
        }

        developer.log('Ranked Top Scorers: $rankedTopScorers');

        topScorers.value =
            rankedTopScorers; // Now the type matches Map<String, List<TopScorer>>
      }
    }
    useEffect(() {
      calculateTopScorer();

      return null;
    }, [listMatch, title]);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text(
          title,
          style: context.headlineSmall,
          overflow: TextOverflow.fade,
        ),
        leading: GestureDetector(
          onTap: () {
            context.pop(true);
          },
          child: Icon(
            Icons.arrow_back,
            size: 28,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 8),
        padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      '${DateFormat("MMMM dd, yyyy").format(DateFormat("yyyy-MM-dd").parse(listMatch![0].event_date!))}',
                      style: AppTextStyle.title18),
                  TextButton(
                    onPressed: () {
                      final SoccerDetailLeagueDTO soccerDetailLeagueDTO = SoccerDetailLeagueDTO(
                          leagueId: soccerOverviewDTO.listMatch![0].league_key.toString(),
                          leagueName: soccerOverviewDTO.title);

                      context.push(SoccerDetailLeague.routeName,extra:soccerDetailLeagueDTO );
                    },
                    child: Row(
                      children: [
                        Text('See all',
                            style:
                                TextStyle(color: primaryColor, fontSize: 14)),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_forward, color: primaryColor),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 12),
                  child: MatchCard(
                    leagueLogo: listMatch![0].league_logo ?? "",
                    title: title,
                    matchDetails: listMatchCard,
                    withButton: false,
                  )),
              SizedBox(height: 24),
              Text('Top Scorers', style: AppTextStyle.title18),
              SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 20, right: 16, left: 16),
                decoration: BoxDecoration(
                  color: Color(0xFFF8F9FA),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  border: Border.all(color: Color(0xFFA9A9A9)),
                ),
                child: Column(
                  children: topScorers.value.isEmpty
                      ? [
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            height: 50,
                            child: Center(
                              child: Text(
                                'No top scorers available',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ),
                          )
                        ]
                      : topScorers.value.entries.take(5).map((entry) {
                          final goalCount = entry.key;
                          final scorers = entry.value;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: scorers.map((scorer) {
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 36,
                                            height: 38,
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.only(
                                                right: 10),
                                            child: Text(
                                              '${goalCount}',
                                              style: context.titleMedium,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(scorer.name,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall),
                                              SizedBox(height: 6),
                                              Text('${scorer?.team} ',
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      if (scorers.indexOf(scorer) <
                                          scorers.length - 1)
                                        Divider(
                                            color: Color(0xFFEEEEEE),
                                            thickness: 1),
                                    ],
                                  );
                                }).toList(),
                              ),
                              if (topScorers.value.entries
                                      .toList()
                                      .indexOf(entry) <
                                  topScorers.value.length - 1)
                                Divider(
                                    color: Color(0xFFEEEEEE),
                                    thickness: 1,
                                    height: 32),
                            ],
                          );
                        }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
