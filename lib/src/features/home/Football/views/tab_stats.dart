import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'package:scora/src/features/home/Football/views/components/widget_stats.dart';
import 'package:scora/src/shared/widgets/widget_no_data.dart';
import 'dart:developer' as developer;

class TabStats extends HookConsumerWidget {
  final SoccerFixtureResult fixture;

  const TabStats({super.key, required this.fixture});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    developer.log("statssss  ${fixture.statistics?.isEmpty.toString() ?? ""}");
    return SizedBox(
        width: double.infinity,
        child: (fixture.statistics?.isEmpty ?? true)
            ? WidgetNoData()
            : Container(
          margin: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: Color(0xFFF8F9FA),
                    border: Border.all(color: Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(20)),
                child: SingleChildScrollView(
                  child: Column(
                      children: fixture.statistics
                              ?.where((data) =>
                                  data.home != null || data.away != null)
                              .map((SoccerFixtureStatistic data) {
                            int homeValue = int.tryParse(
                                    data.home?.replaceAll('%', '') ?? "0") ??
                                0;
                            int awayValue = int.tryParse(
                                    data.away?.replaceAll('%', '') ?? "0") ??
                                0;

                            if (data.type == "Substitution") {
                              return SizedBox();
                            }
                            ;

                            return WidgetStats(
                              StatName: data.type ?? "",
                              homeValue: homeValue,
                              awayValue: awayValue,
                            );
                          }).toList() ??
                          []),
                ),
              ));
  }
}
