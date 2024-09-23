import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/home/Football/controller/soccer_tab_h2h_controller.dart';
import 'package:scora/src/features/home/Football/controller/soccer_tab_table_controller.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/home/Football/views/components/widget_substituion.dart';
import 'package:scora/src/features/home/Football/views/components/widget_substitute.dart';
import 'package:scora/src/features/home/Football/views/components/widget_substitute_reverse.dart';
import 'package:scora/src/shared/widgets/widget_no_data.dart';
import 'dart:developer' as developer;

class TabTable extends HookConsumerWidget {
  final SoccerFixtureResult fixture;

  const TabTable({super.key, required this.fixture});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    final data = ref
        .watch(soccerTabTableControllerProvider(fixture.league_key.toString()));

    return data.when(
        data: (dataTable) {
          return Column(
            children: [
              dataTable.result?.total != []
                  ? Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      padding: EdgeInsets.only(
                          top: 16, bottom: 20, left: 16, right: 16),
                      decoration: BoxDecoration(
                          color: Color(0xFFF8F9FA),
                          border: Border.all(color: Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Table(
                        columnWidths: const {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(5),
                          2: FlexColumnWidth(1),
                          3: FlexColumnWidth(1),
                          4: FlexColumnWidth(1),
                        },
                        children: [
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                margin: EdgeInsets.only(bottom: 16),
                                child: Text(
                                  '#',
                                  style: AppTextStyle.titleMedium,
                                  textAlign: TextAlign.center,
                                )),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              margin: EdgeInsets.only(bottom: 16),
                              child: Text(
                                'TEAM',
                                style: AppTextStyle.titleMedium,
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              margin: EdgeInsets.only(bottom: 16),
                              child: Text(
                                'P',
                                style: AppTextStyle.titleMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              margin: EdgeInsets.only(bottom: 16),
                              child: Text(
                                'GD',
                                style: AppTextStyle.titleMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              margin: EdgeInsets.only(bottom: 16),
                              child: Text(
                                'PTS',
                                style: AppTextStyle.titleMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ]),
                          ...dataTable.result!.total!
                              .asMap()
                              .entries
                              .map((entry) {
                            int index = entry.key;
                            var data = entry.value;
                            return TableRow(
                              decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(color: Color(0xFFEEEEEE))),
                              ),
                              children: [
                                Stack(
                                  alignment: Alignment.bottomCenter,  // Ensure alignment is correct
                                  children: [
                                    Container(
                                      width: double.maxFinite,
                                      padding: index < 3 ? EdgeInsets.only(top: 9, bottom: 4) : EdgeInsets.all(9),
                                      margin: EdgeInsets.only(top: 8, bottom: 6),
                                      child: Text(
                                        data.standing_place.toString(),
                                        style: AppTextStyle.label16,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    index < 3 ? Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        height: 5,
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4),  // Adjust the radius value as needed
                                            topRight: Radius.circular(4),
                                          ),
                                        ),
                                      ),
                                    ) : SizedBox()
                                  ],
                                ),

                                // Container(
                                //   padding: EdgeInsets.symmetric(vertical: 8),
                                //   child: Text(
                                //     data.standing_team,
                                //     style: AppTextStyle.label16,
                                //   ),
                                // ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  margin: EdgeInsets.only(top: 8, bottom: 6,left: 6),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: Image.network(
                                          data.team_logo ?? "",
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return Icon(
                                              Icons.sports_soccer,
                                              size: 24,
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        data.standing_team,
                                        style: AppTextStyle.label16,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  margin: EdgeInsets.only(top: 8, bottom: 6),
                                  child: Text(
                                    data.standing_P.toString(),
                                    style: AppTextStyle.label16,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  margin: EdgeInsets.only(top: 8, bottom: 6),
                                  child: Text(
                                    data.standing_GD.toString(),
                                    style: AppTextStyle.label16,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  margin: EdgeInsets.only(top: 8, bottom: 6),
                                  child: Text(
                                    data.standing_PTS.toString(),
                                    style: AppTextStyle.label16,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            );
                          }).toList()
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



