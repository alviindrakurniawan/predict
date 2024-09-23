import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/core/themes/theme_text.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/features/home/Football/controller/soccer_prediction_send_predict_controller.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/navigation/controllers/navigation_page_controller.dart';
import 'package:scora/src/features/profile/models/response_model.dart';
import 'package:scora/src/shared/shared.dart';
import 'package:go_router/go_router.dart';

class TabPrediction extends HookConsumerWidget {
  final SoccerFixtureResult fixture;

  const TabPrediction({super.key, required this.fixture});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final selectedTeam = useState<String?>(null);

    final dateTimeNow = DateTime.now();
    String dateTimeFixtureString =
        "${fixture.event_date} ${fixture.event_time} Z";

    DateTime dateTimeFixture = DateTime.parse(dateTimeFixtureString);
    final buttonState =
        ref.watch(soccerPredictionSendPredictControllerProvider);
    final predictionState =
        ref.watch(soccerPredictionSendPredictControllerProvider);

    ref.listen<AsyncValue<ResponseModel?>>(
      soccerPredictionSendPredictControllerProvider,
      (previous, next) {
        next.when(
          data: (result) {
            if (result?.responseMessage == "Create Prediction Success") {
              showSuccessSnackbar(
                context: context,
                title: "Success",
                messsage: "Your prediction was successfully submitted!",
              );
              // Perform navigation here
              context.go(HomeView.routeName);
              ref.read(navigationPageProvider.notifier).onDestinationSelected(context, value: 0);
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
      },
    );

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
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
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Text(
                      "Draw",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: selectedTeam.value == "Draw"
                            ? primaryColor
                            : Color(0xFF212121),
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
                  selectedTeam.value = (fixture.event_home_team ?? "Home Team");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  decoration: BoxDecoration(
                      color: (selectedTeam.value ==
                              (fixture.event_home_team ?? "Home Team"))
                          ? primaryColor
                          : greenLightColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: primaryColor, width: 1.0)),
                  child: Text(
                    'Home',
                    style: TextStyle(
                        color: (selectedTeam.value ==
                                (fixture.event_home_team ?? "Home Team"))
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
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  decoration: BoxDecoration(
                      color: selectedTeam.value == "Draw"
                          ? primaryColor
                          : greenLightColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: primaryColor, width: 1.0)),
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
                  selectedTeam.value = (fixture.event_away_team ?? "Away Team");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  decoration: BoxDecoration(
                      color: (selectedTeam.value ==
                              (fixture.event_away_team ?? "Away Team"))
                          ? primaryColor
                          : greenLightColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: primaryColor, width: 1.0)),
                  child: Text(
                    'Away',
                    style: TextStyle(
                        color: (selectedTeam.value ==
                                (fixture.event_away_team ?? "Away Team"))
                            ? Colors.white
                            : primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 50),
          CustomGreenFilledButton(
            title: "Predict",
            onPressed: (dateTimeNow.isBefore(dateTimeFixture) &&
                    !buttonState.isLoading)
                ? () async {
                    final predictionController = ref.read(
                        soccerPredictionSendPredictControllerProvider.notifier);
                    final prediction = selectedTeam.value ==
                            (fixture.event_home_team ?? "Home Team")
                        ? "1"
                        : selectedTeam.value ==
                                (fixture.event_away_team ?? "Away Team")
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
                  }
                : null,
            isDisabled: dateTimeNow.isAfter(dateTimeFixture) ||
                selectedTeam.value == null ||
                buttonState.isLoading,
          ),
        ],
      ),
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
