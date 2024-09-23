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
import 'package:scora/src/features/home/Football/models/summary_model.dart';
import 'package:scora/src/features/home/Football/views/components/widget_stats.dart';
import 'package:scora/src/shared/widgets/widget_no_data.dart';
import 'dart:developer' as developer;

class TabSummary extends HookConsumerWidget {
  final SoccerFixtureResult fixture;

  const TabSummary({super.key, required this.fixture});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    String dateTimeFixtureString =
        "${fixture.event_date} ${fixture.event_time} Z";

    developer.log(
        'data gak onok: ${(fixture.goalscorers?.isEmpty ?? true) && (fixture.cards?.isEmpty ?? true)}');
    developer.log('Test data input ${fixture.goalscorers}');
    developer.log('Test data input ${fixture.cards}');

    // Assuming `statistics` is the list you want to filter
    SoccerFixtureStatistic? goalData = fixture.statistics
        ?.firstWhere((data) => data.type == "On Target", orElse: () => SoccerFixtureStatistic());

    SoccerFixtureStatistic? cornerKickData  = fixture.statistics
        ?.firstWhere((data) => data.type == "Corners", orElse: () => SoccerFixtureStatistic());

    SoccerFixtureStatistic? yellowCardData = fixture.statistics
        ?.firstWhere((data) => data.type == "Yellow Cards", orElse: () => SoccerFixtureStatistic());

    final listSummary = useState<List<SummaryModel?>>([]);

    List<SummaryModel?> createListSummary(SoccerFixtureResult fixture) {
      //add goals
      fixture.goalscorers?.forEach((data) {
        developer.log('data goal ${data.toString()}');
        listSummary.value.add(SummaryModel(
            time: data.time ?? "",
            home: data.home_scorer ?? null,
            homeIcon: data.home_scorer != "" ? "goal" : null,
            score: data.score ?? "",
            away: data.away_scorer ?? null,
            awayIcon: data.away_scorer != "" ? "goal" : null));
      });

      //add cards
      fixture.cards?.forEach((data) {
        developer.log('data card ${data.toString()}');
        listSummary.value.add(SummaryModel(
            time: data.time ?? "",
            home: data.home_fault ?? null,
            homeIcon: data.home_fault != "" ? data?.card : null,
            away: data.away_fault ?? null,
            awayIcon: data.away_fault != "" ? data.card : null));
      });

      //add halftime score in summary
      if (fixture.event_halftime_result != null) {
        listSummary.value.add(SummaryModel(
            time: "HT", score: fixture?.event_halftime_result ?? ""));
      }

      // rearrange list based on time
      String parseTime(String time) {
        if (time == "HT") {
          return "4500"; //
        }
        if (time.contains('+')) {
          List<String> parts = time.split('+');
          return parts[0].padLeft(2, '0') + parts[1].padLeft(2, '0');
        }
        return time.padLeft(2, '0') + "00";
      }

      //sorting list
      listSummary.value.sort((a, b) {
        String timeA = parseTime(a!.time ?? '0');
        String timeB = parseTime(b!.time ?? '0');
        return timeA.compareTo(timeB);
      });

      return listSummary.value;
    }

    useEffect(() {
      if ((fixture.goalscorers?.isNotEmpty ?? false) ||
          (fixture.cards?.isNotEmpty ?? false)) {
        listSummary.value = createListSummary(fixture);
      }
    }, []);

    return Column(
      children: [
        //Match Info
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          child: ((fixture.event_referee?.isEmpty ?? true) &&
                  (fixture.event_stadium?.isEmpty ?? true))
              ? WidgetNoData()
              : SingleChildScrollView(
                  child: Container(
                      margin: EdgeInsets.only(top: 24),
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 21),
                      decoration: BoxDecoration(
                          color: Color(0xFFF8F9FA),
                          border: Border.all(color: Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Match Info',
                            style: AppTextStyle.title18,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Divider(color: Color(0xFFEEEEEE), thickness: 1),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Stadium :',
                                style: AppTextStyle.body16W600,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  fixture.event_stadium != null &&
                                          fixture.event_stadium!.isNotEmpty
                                      ? '${fixture.event_stadium}'
                                      : "",
                                  style: AppTextStyle.body16W600,
                                  overflow: TextOverflow.clip,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Referee  :',
                                style: AppTextStyle.body16W600,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  fixture.event_referee != null &&
                                          fixture.event_referee!.isNotEmpty
                                      ? '${fixture.event_referee}'
                                      : "-",
                                  style: AppTextStyle.body16W600,
                                  overflow: TextOverflow.clip,
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
        ),
        //Match Summary
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          child: ((fixture.goalscorers?.isEmpty ?? true) &&
                  (fixture.cards?.isEmpty ?? true))
              ? Container()
              : SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(top: 24),
                    padding: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                        color: Color(0xFFF8F9FA),
                        border: Border.all(color: Color(0xFFEEEEEE)),
                        borderRadius: BorderRadius.circular(20)),
                    child: Table(
                      columnWidths: const {
                        0: FlexColumnWidth(0.4),
                        1: FlexColumnWidth(1),
                        2: FlexColumnWidth(0.5),
                        3: FlexColumnWidth(1)
                      },
                      children: listSummary.value.map((summary) {
                        developer.log('summary ${summary.toString()}');
                        return TableRow(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFFEEEEEE), width: 1),
                              ),
                            ),
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  "${summary?.time}' " ?? "",
                                  style: AppTextStyle.body16W600,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      summary?.home ?? "",
                                      style: AppTextStyle.body16W600,
                                      overflow: TextOverflow.ellipsis,
                                    )),
                                    summary?.homeIcon != null
                                        ? Container(
                                            margin: EdgeInsets.only(
                                                left: 8, right: 3),
                                            child: summary?.homeIcon == "goal"
                                                ? Icon(
                                                    Icons.sports_soccer,
                                                    size: 16,
                                                  )
                                                : Container(
                                                    width: 12,
                                                    height: 16,
                                                    decoration: BoxDecoration(
                                                      color: summary
                                                                  ?.homeIcon ==
                                                              "yellow card"
                                                          ? Color(0xFFFACC15)
                                                          : summary?.homeIcon ==
                                                                  "red card"
                                                              ? Colors.red
                                                              : Colors
                                                                  .transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2),
                                                    ),
                                                  ),
                                          )
                                        : Container(),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Center(
                                    child: Text(
                                  summary?.score ?? "",
                                  style: AppTextStyle.body16W600,
                                  overflow: TextOverflow.ellipsis,
                                )),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Row(
                                  children: [
                                    summary?.awayIcon != null
                                        ? Container(
                                            margin: EdgeInsets.only(
                                                left: 8, right: 3),
                                            child: summary?.awayIcon == "goal"
                                                ? Icon(
                                                    Icons.sports_soccer,
                                                    size: 16,
                                                  )
                                                : Container(
                                                    width: 12,
                                                    height: 16,
                                                    decoration: BoxDecoration(
                                                      color: summary
                                                                  ?.awayIcon ==
                                                              "yellow card"
                                                          ? Color(0xFFFACC15)
                                                          : summary?.awayIcon ==
                                                                  "red card"
                                                              ? Colors.red
                                                              : Colors
                                                                  .transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2),
                                                    ),
                                                  ),
                                          )
                                        : Container(),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        summary?.away ?? "",
                                        style: AppTextStyle.body16W600,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]);
                      }).toList(),
                    ),
                  ),
                ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          child: ((fixture.statistics
                      ?.where((data) => data.type == "Ball Possession")
                      .isEmpty ??
                  true))
              ? Container()
              : SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(top: 24),
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    decoration: BoxDecoration(
                        color: Color(0xFFF8F9FA),
                        border: Border.all(color: Color(0xFFEEEEEE)),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        ...fixture.statistics
                                ?.where(
                                    (data) => data.type == "Ball Possession")
                                .map((data) {
                              return WidgetStats(
                                StatName: "Possession (%)",
                                homeValue: int.tryParse(
                                        data.home?.replaceAll('%', '') ??
                                            "0") ??
                                    0,
                                awayValue: int.tryParse(
                                        data.away?.replaceAll('%', '') ??
                                            "0") ??
                                    0,
                              );
                            }).toList() ??
                            [],
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5),
                                      borderRadius: BorderRadius.circular(12),
                                      border:
                                          Border.all(color: Color(0XFFEEEEEE))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(goalData?.home ??"0",
                                          style: AppTextStyle.body16W600),
                                      SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Image.asset(
                                              'assets/images/gawang.png')),
                                      Text(goalData?.away ??"0",
                                          style: AppTextStyle.body16W600),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5),
                                      borderRadius: BorderRadius.circular(12),
                                      border:
                                          Border.all(color: Color(0XFFEEEEEE))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(cornerKickData?.home??"0",
                                          style: AppTextStyle.body16W600),
                                      SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Image.asset(
                                              'assets/images/corner.png')),
                                      Text(cornerKickData?.away??"0",
                                          style: AppTextStyle.body16W600),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5),
                                      borderRadius: BorderRadius.circular(12),
                                      border:
                                          Border.all(color: Color(0XFFEEEEEE))),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(yellowCardData?.home??"0",
                                          style: AppTextStyle.body16W600),
                                      Container(
                                        width: 12,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFACC15),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      Text(yellowCardData?.away??"0",
                                          style: AppTextStyle.body16W600),
                                    ],
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
