import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/features.dart';
import 'package:go_router/go_router.dart';
import 'dart:developer' as developer;

class HistoryPredict extends HookConsumerWidget {
  const HistoryPredict({super.key});

  static const routeName = '/history-predict';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final predictList = ref.watch(historyPredictControllerProvider);


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('History Predict', style: context.headlineSmall),
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
      body: predictList.when(
        data: (predictions)
        {
          if(predictions.isEmpty)
          {
            return SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  'No predictions available',
                  style: AppTextStyle.title12,
                ),
              ),
            );
          }


          developer.log('prediction :${predictions.toString()}');
          //sorted by event_date
          final sorteredPredictions = List.from(predictions)..sort((a,b){
              developer.log("a: ${a}");
              developer.log("b: ${b}");
            return DateTime.parse(b!.event_date).compareTo(DateTime.parse(a!.event_date)); });
          developer.log("sorted predict");
          return SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(0.6),
                    3: FlexColumnWidth(2),
                    4: FlexColumnWidth(1.2),
                  },
                  children: sorteredPredictions.map((prediction) {
                    DateTime parsedDate =
                        DateTime.parse(prediction?.event_date ?? '');
                    String formattedDate =
                        DateFormat('dd/MM').format(parsedDate);
                    final result = useState<String>('Lose');
                    bool isCorrectPrediction = false;
                    final winTeam = useState<String>("Lose");


                    // Check if event_final_result is valid
                    if (prediction?.event_final_result != null &&
                        prediction!.event_final_result!.contains(' - ')) {
                      developer.log('MASOOOKKK');
                      List<String> scores =
                          prediction.event_final_result!.split(' - ');
                      int homeScore = int.parse(scores[0]);
                      int awayScore = int.parse(scores[1]);

                      if (homeScore > awayScore) {
                        winTeam.value = 'Home';
                      } else if (homeScore == awayScore) {
                        winTeam.value = 'Draw';
                      } else {
                        winTeam.value = 'Away';
                      }

                      // Check if the prediction correct
                      developer.log(prediction.prediction);
                      if (prediction.prediction == '1' &&
                          homeScore > awayScore) {
                        isCorrectPrediction = true;
                        result.value = 'Win';
                      } else if (prediction.prediction == 'X' &&
                          homeScore == awayScore) {
                        isCorrectPrediction = true;
                        result.value = 'Win';
                      } else if (prediction.prediction == '2' &&
                          homeScore < awayScore) {
                        isCorrectPrediction = true;
                        result.value = 'Win';
                      }
                    } else {
                      result.value = 'Waiting';
                      isCorrectPrediction = false;
                    }

                    return TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            formattedDate,
                            style: AppTextStyle.title12,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            prediction?.event_home_team?? 'Home Team',
                            style: winTeam.value == 'Home'
                                ? AppTextStyle.title12
                                : AppTextStyle.bodySmall,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:  20,bottom: 20,left: 5),
                          child: Text(
                            prediction?.event_final_result ?? '-',
                            style: AppTextStyle.title12,

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:  20,bottom: 20,left: 5),
                          child: Text(
                            prediction?.event_away_team ?? 'Away Team',
                            style: winTeam.value == 'Away'
                                ? AppTextStyle.title12
                                : AppTextStyle.bodySmall,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:  15,bottom: 15,left: 10),
                          child: Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: result.value == "Waiting"
                                  ? Colors.grey.shade200
                                  : isCorrectPrediction
                                      ? Colors.green.shade100
                                      : Colors.red.shade100,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: result.value == "Waiting"
                                      ? Colors.grey.shade500
                                      : isCorrectPrediction
                                          ? Colors.green
                                          : Colors.red),
                            ),
                            child: Center(
                              child: Text(
                                result.value,
                                style: AppTextStyle.title12.copyWith(
                                  color: result.value == "Waiting"
                                      ? Colors.grey
                                      : isCorrectPrediction
                                          ? Colors.green
                                          : Colors.red,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(
              'Failed to load predictions: $error',
              style: AppTextStyle.title12.copyWith(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
