import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/features/home/Football/controller/soccer_prediction_controller.dart';
import 'package:scora/src/features/home/Football/controller/soccer_prediction_send_predict_controller.dart';
import 'package:scora/src/features/predict/services/prediction_service.dart';
import 'package:scora/src/features/home/controllers/soccer_fixture_controller.dart';
import 'package:scora/src/shared/shared.dart';
import 'dart:developer' as developer;

class SoccerPredictView extends HookConsumerWidget {
  final String matchId;

  SoccerPredictView({required this.matchId});

  static const String routeName = '/soccer-predict';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTeam = useState<String?>(null);
    final size = MediaQuery.of(context).size;
    final predictionState =
        ref.watch(soccerPredictionSendPredictControllerProvider);
    final buttonState = ref.watch(soccerPredictionSendPredictControllerProvider);
    final fixture =
        ref.watch(soccerPredictionControllerProvider(matchId: matchId));
    return fixture.when(
      data: (fixture) {
        final dateTimeNow = DateTime.now().toUtc();
        String dateTimeFixtureString =
            "${fixture.event_date} ${fixture.event_time} Z";

        DateTime dateTimeFixture = DateTime.parse(dateTimeFixtureString);


        final currentScore = useState<String>("-");
        if (fixture.event_final_result != "-") {
          currentScore.value = fixture.event_final_result!;
        } else if (fixture.event_halftime_result != "") {
          currentScore.value = fixture.event_halftime_result!;
        } else {
          currentScore.value = "0 - 0";
        }

        //goalscorer
        List<String> homeScorrer = [];
        List<String> awayScorrer = [];
        if (fixture.goalscorers != null) {
          fixture.goalscorers!.forEach((element) {
            if (element.home_scorer != "") {
              homeScorrer.add('${element.home_scorer} ${element.time}" ');
            } else {
              awayScorrer.add('${element.away_scorer} ${element.time}" ');
            }
          });
        }

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Matches', style: context.headlineSmall),
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
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Color(0xFF4C0033),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              fixture.league_name ?? 'League',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              fixture.country_name ?? 'Country',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 16),
                            //Logo and Score
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Home Score
                                Container(
                                  width: 100,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        child: (fixture.home_team_logo != null)
                                            ? Image.network(
                                                fixture.home_team_logo!,
                                                fit: BoxFit.contain,
                                                errorBuilder: (context, error,
                                                    stackTrace) {
                                                  return Icon(
                                                    Icons.sports_soccer,
                                                    size: 40,
                                                    color: Colors.black54,
                                                  );
                                                },
                                              )
                                            : Icon(
                                                Icons.sports_soccer,
                                                size: 40,
                                                color: Colors.black54,
                                              ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        fixture.event_home_team ?? "Home Team",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            overflow: TextOverflow.clip,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 25),
                                  child: Text(
                                    currentScore.value,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                //Away Score
                                Container(
                                  width: 100,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        child: (fixture.away_team_logo != null)
                                            ? Image.network(
                                                fixture.away_team_logo!,
                                                fit: BoxFit.contain,
                                                errorBuilder: (context, error,
                                                    stackTrace) {
                                                  return Icon(
                                                    Icons.sports_soccer,
                                                    size: 40,
                                                    color: Colors.black54,
                                                  );
                                                },
                                              )
                                            : Icon(
                                                Icons.sports_soccer,
                                                size: 40,
                                                color: Colors.black54,
                                              ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        fixture.event_away_team ?? "Away Team",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            overflow: TextOverflow.clip,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              fixture.event_status ?? '',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 8),
                            //Scorers
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ...homeScorrer
                                          .map((scorer) => Row(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.sports_soccer,
                                                    color: Colors.white,
                                                    size: 16,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      scorer,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        overflow: TextOverflow.clip
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ))
                                          .toList(),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 30),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 8),
                                      ...awayScorrer
                                          .map((scorer) => Row(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.sports_soccer,
                                                    color: Colors.white,
                                                    size: 16,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      scorer,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                          overflow: TextOverflow.clip
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ))
                                          .toList(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Text('Prediction', style: context.headlineSmall),
                    SizedBox(height: 16),

                    Table(
                      columnWidths: {
                        0: FlexColumnWidth(3),
                        1: FlexColumnWidth(0.7),
                        2: FlexColumnWidth(3),
                      },
                      children: [
                        TableRow(
                          children: [
                            _buildTeamOption(
                              context,
                              fixture.event_home_team ?? 'Home Team',
                              fixture.home_team_logo ?? null,
                              selectedTeam.value ==
                                  (fixture.event_home_team ?? "Home Team"),
                              () => selectedTeam.value =
                                  (fixture.event_home_team ?? "Home Team"),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                "Draw",
                                style: TextStyle(
                                  color: Color(0xFF212121),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            _buildTeamOption(
                              context,
                              fixture.event_away_team ?? 'Away Team',
                              fixture.away_team_logo ?? null,
                              selectedTeam.value ==
                                  (fixture.event_away_team ?? "Away Team"),
                              () => selectedTeam.value =
                                  (fixture.event_away_team ?? "Away Team"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            selectedTeam.value =
                                (fixture.event_home_team ?? "Home Team");
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 6),
                            decoration: BoxDecoration(
                                color: (selectedTeam.value ==
                                        (fixture.event_home_team ??
                                            "Home Team"))
                                    ? primaryColor
                                    : greenLightColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: primaryColor, width: 1.0)),
                            child: Text(
                              'Home',
                              style: TextStyle(
                                  color: (selectedTeam.value ==
                                          (fixture.event_home_team ??
                                              "Home Team"))
                                      ? Colors.white
                                      : primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectedTeam.value = "Draw";
                          },
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 30),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 6),
                            decoration: BoxDecoration(
                                color: selectedTeam.value == "Draw"
                                    ? primaryColor
                                    : greenLightColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: primaryColor, width: 1.0)),
                            child: Text(
                              'Draw',
                              style: TextStyle(
                                  color: selectedTeam.value == "Draw"
                                      ? Colors.white
                                      : primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectedTeam.value =
                                (fixture.event_away_team ?? "Away Team");
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 6),
                            decoration: BoxDecoration(
                                color: (selectedTeam.value ==
                                        (fixture.event_away_team ??
                                            "Away Team"))
                                    ? primaryColor
                                    : greenLightColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: primaryColor, width: 1.0)),
                            child: Text(
                              'Away',
                              style: TextStyle(
                                  color: (selectedTeam.value ==
                                          (fixture.event_away_team ??
                                              "Away Team"))
                                      ? Colors.white
                                      : primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                        )
                      ],
                    ),

                    // predict logo

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     _buildTeamOption(
                    //       context,
                    //       fixture.event_home_team ?? 'Home Team',
                    //       fixture.home_team_logo ?? null,
                    //       selectedTeam.value ==
                    //           (fixture.event_home_team ?? "Home Team"),
                    //       () => selectedTeam.value =
                    //           (fixture.event_home_team ?? "Home Team"),
                    //     ),
                    //     Text(
                    //       "Draw",
                    //       style: TextStyle(
                    //           color: Color(0xFF212121),
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.bold),
                    //     ),
                    //     _buildTeamOption(
                    //       context,
                    //       fixture.event_away_team ?? 'Away Team',
                    //       fixture.away_team_logo ?? null,
                    //       selectedTeam.value ==
                    //           (fixture.event_away_team ?? "Away Team"),
                    //       () => selectedTeam.value =
                    //           (fixture.event_away_team ?? "Away Team"),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(height: 50),
                    CustomGreenFilledButton(
                      title: "Predict",
                      onPressed: (dateTimeNow.isBefore(dateTimeFixture) &&
                              !buttonState.isLoading)
                          ? () async {
                              final predictionController = ref.read(
                                  soccerPredictionSendPredictControllerProvider
                                      .notifier);
                              final prediction = selectedTeam.value ==
                                      (fixture.event_home_team ?? "Home Team")
                                  ? "1"
                                  : selectedTeam.value ==
                                          (fixture.event_away_team ??
                                              "Away Team")
                                      ? "2"
                                      : "3";

                              await predictionController.makePrediction(
                                sport: "1",
                                leagueId: fixture.league_key.toString(),
                                matchId: fixture.event_key.toString(),
                                prediction: prediction,
                                homeTeamId: fixture.home_team_key.toString(),
                                awayTeamId: fixture.away_team_key.toString(),
                              );

                              predictionState.when(
                                data: (result) {
                                  if(result?.responseMessage == "Create Prediction Success"){
                                    showSuccessSnackbar(
                                      context: context,
                                      title: "Success",
                                      messsage:
                                      "Your prediction was successfully submitted!",
                                    );
                                    context.go(HomeView.routeName);
                                  }

                                },
                                loading: () {},
                                error: (error, stackTrace) {
                                  showFailedSnackbar(
                                    context: context,
                                    title: "Failed Predict",
                                    messsage: "${error.toString()}",
                                  );
                                },
                              );
                            }
                          : null,
                      isDisabled: dateTimeNow.isAfter(dateTimeFixture) ||
                          selectedTeam.value == null ||
                          buttonState.isLoading,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stack) {
        return Container(
          width: size.width,
          height: size.height,
          child: Center(
            child: Text('Error Occurred: ${error.toString()}'),
          ),
        );
      },
    );
  }

  Widget _buildTeamOption(
    BuildContext context,
    String teamName,
    String? url,
    bool isSelected,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 22, bottom: 16),
        margin: const EdgeInsets.only(right: 12, left: 12),
        decoration: isSelected
            ? BoxDecoration(
                color: Color(0xFFF8F9FA),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x1A000000), // 10% opacity of #000000
                    offset: Offset(3, 3),
                    blurRadius: 9,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x17000000), // 9% opacity of #000000
                    offset: Offset(12, 10),
                    blurRadius: 16,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x0D000000), // 5% opacity of #000000
                    offset: Offset(27, 23),
                    blurRadius: 21,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x03000000), // 1% opacity of #000000
                    offset: Offset(49, 40),
                    blurRadius: 25,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x00000000), // 0% opacity of #000000
                    offset: Offset(76, 63),
                    blurRadius: 28,
                    spreadRadius: 0,
                  ),
                ],
                border: Border.all(color: Color(0xFFEEEEEE)),
              )
            : BoxDecoration(),
        child: Column(
          children: [
            Container(
              width: 64,
              height: 64,
              child: (url != null)
                  ? Image.network(
                      url!,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.sports_soccer,
                          size: 40,
                          color: Colors.black54,
                        );
                      },
                    )
                  : Icon(
                      Icons.sports_soccer,
                      size: 40,
                      color: Colors.black54,
                    ),
            ),
            SizedBox(height: 8),
            Text(
              teamName,
              style: AppTextStyle.title18,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
