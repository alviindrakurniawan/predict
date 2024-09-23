import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/home/Football/controller/soccer_tab_h2h_controller.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/home/Football/views/components/widget_substituion.dart';
import 'package:scora/src/features/home/Football/views/components/widget_substitute.dart';
import 'package:scora/src/features/home/Football/views/components/widget_substitute_reverse.dart';
import 'package:scora/src/shared/widgets/widget_no_data.dart';
import 'dart:developer' as developer;

class TabH2H extends HookConsumerWidget {
  final SoccerFixtureResult fixture;

  const TabH2H({super.key, required this.fixture});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    final data = ref.watch(soccerTabH2HControllerProvider(
        fixture.home_team_key.toString(), fixture.away_team_key.toString()));


    return data.when(
        data: (dataH2H) {
          developer.log('list h2h 1${ dataH2H.result?.firstTeamResults.toString()??""}');
          developer.log('list h2h 1${dataH2H.result?.secondTeamResults.toString()??""}' );
          return Column(
            children: [

              dataH2H.result?.firstTeamResults != []
                  ? Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      padding: EdgeInsets.only(
                          top: 16, bottom: 20, left: 16, right: 16),
                      decoration: BoxDecoration(
                          color: Color(0xFFF8F9FA),
                          border: Border.all(color: Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Match : ${fixture.event_home_team}',
                            style: AppTextStyle.body14W600,
                          ),
                          // SizedBox(height: 16,),
                          ...dataH2H.result!.firstTeamResults!.map((data) {
                            developer.log('logo league ${data.league_logo}');
                            return Container(
                              margin: EdgeInsets.only(top: 16),
                              padding: EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        DateFormat('MM.dd.yy').format(
                                            DateTime.parse(
                                                data.event_date ?? "")),
                                        style: AppTextStyle.body10W600,
                                        textAlign: TextAlign.start,
                                      )),
                                  data.league_logo != null
                                      ? Container(
                                          margin: EdgeInsets.only(right: 5),
                                          height: 20,
                                          width: 20,
                                          child: Image.network(
                                              data.league_logo ?? ""),
                                        )
                                      : SizedBox(),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      data.league_name ?? "",
                                      style: AppTextStyle.body10W600,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      data.event_home_team ?? "",
                                      style: AppTextStyle.body12W600,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      data.event_final_result ?? "",
                                      style: AppTextStyle.body12W600,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      data.event_away_team ?? "",
                                      style: AppTextStyle.body12W600,
                                    ),
                                  )
                                ],
                              ),
                            );
                          })
                        ],
                      ),
                    )
                  : SizedBox(),
              dataH2H.result?.secondTeamResults != []
                  ? Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24),
                      padding: EdgeInsets.only(
                          top: 16, bottom: 20, left: 16, right: 16),
                      decoration: BoxDecoration(
                          color: Color(0xFFF8F9FA),
                          border: Border.all(color: Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Match : ${fixture.event_away_team}',
                            style: AppTextStyle.body14W600,
                          ),

                          ...dataH2H.result!.secondTeamResults!.map((data) {
                            developer.log('logo league ${data.league_logo}');
                            return Container(
                              margin: EdgeInsets.only(top: 16),
                              padding: EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        DateFormat('MM.dd.yy').format(
                                            DateTime.parse(
                                                data.event_date ?? "")),
                                        style: AppTextStyle.body10W600,
                                        textAlign: TextAlign.start,
                                      )),
                                  data.league_logo != null
                                      ? Container(
                                          margin: EdgeInsets.only(right: 5),
                                          height: 20,
                                          width: 20,
                                          child: Image.network(
                                              data.league_logo ?? ""),
                                        )
                                      : SizedBox(),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      data.league_name ?? "",
                                      style: AppTextStyle.body10W600,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      data.event_home_team ?? "",
                                      style: AppTextStyle.body12W600,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      data.event_final_result ?? "",
                                      style: AppTextStyle.body12W600,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      data.event_away_team ?? "",
                                      style: AppTextStyle.body12W600,
                                    ),
                                  )
                                ],
                              ),
                            );
                          })
                        ],
                      ),
                    )
                  : SizedBox(),
              dataH2H.result?.H2H != []
                  ? Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      padding: EdgeInsets.only(
                          top: 16, bottom: 20, left: 16, right: 16),
                      decoration: BoxDecoration(
                          color: Color(0xFFF8F9FA),
                          border: Border.all(color: Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Match : ${fixture.event_home_team} & ${fixture.event_away_team}',
                            style: AppTextStyle.body14W600,
                          ),
                          // SizedBox(height: 16,),
                          ...dataH2H.result!.H2H!.map((data) {
                            developer.log('logo league ${data.league_logo}');
                            return Container(
                              margin: EdgeInsets.only(top: 16),
                              padding: EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        DateFormat('MM.dd.yy').format(
                                            DateTime.parse(
                                                data.event_date ?? "")),
                                        style: AppTextStyle.body10W600,
                                        textAlign: TextAlign.start,
                                      )),
                                  data.league_logo != null
                                      ? Container(
                                          margin: EdgeInsets.only(right: 5),
                                          height: 20,
                                          width: 20,
                                          child: Image.network(
                                              data.league_logo ?? ""),
                                        )
                                      : SizedBox(),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      data.league_name ?? "",
                                      style: AppTextStyle.body10W600,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      data.event_home_team ?? "",
                                      style: AppTextStyle.body12W600,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      data.event_final_result ?? "",
                                      style: AppTextStyle.body12W600,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      data.event_away_team ?? "",
                                      style: AppTextStyle.body12W600,
                                    ),
                                  )
                                ],
                              ),
                            );
                          })
                        ],
                      ),
                    )
                  : SizedBox(),
            ],
          );
        },
        error: (error, stack) => Center(child: Text('Error: $error')),
        loading: () => Container(
            margin: EdgeInsets.all(20),
            child: Center(child: CircularProgressIndicator())));
  }
}
