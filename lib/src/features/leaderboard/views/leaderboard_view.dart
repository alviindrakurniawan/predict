import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/features.dart';
import 'dart:developer' as developer;

import 'package:scora/src/features/leaderboard/controllers/leaderboard_controller.dart';

class LeaderboardView extends HookConsumerWidget {
  // final Widget child;

  const LeaderboardView({
    super.key,
    // required this.child
  });

  static const routeName = '/leaderboard';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = useState<String>("Weekly");

    final leaderboardResponse = ref.watch(leaderboardControllerProvider);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0.0,
        title: Text('Leaderboard', style: context.headlineSmall),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      developer.log('Weekly');
                      isSelected.value = "Weekly";
                    },
                    child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: isSelected.value == "Weekly"
                                ? primaryColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            border:
                                Border.all(color: primaryColor, width: 2.0)),
                        child: Text('Weekly',
                            style: TextStyle(
                                color: isSelected.value == "Weekly"
                                    ? Colors.white
                                    : primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16))),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      isSelected.value = "Monthly";
                      ref
                          .read(leaderboardControllerProvider.notifier)
                          .getMonthlyLeaderboard();
                    },
                    child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: isSelected.value == "Monthly"
                                ? primaryColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            border:
                                Border.all(color: primaryColor, width: 2.0)),
                        child: Text('Monthly',
                            style: TextStyle(
                                color: isSelected.value == "Monthly"
                                    ? Colors.white
                                    : primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16))),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      isSelected.value = "Yearly";
                      ref
                          .read(leaderboardControllerProvider.notifier)
                          .getYearlyLeaderboard();
                    },
                    child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: isSelected.value == "Yearly"
                                ? primaryColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            border:
                                Border.all(color: primaryColor, width: 2.0)),
                        child: Text('Yearly',
                            style: TextStyle(
                                color: isSelected.value == "Yearly"
                                    ? Colors.white
                                    : primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16))),
                  )
                ],
              ),
            )),
      ),
      body: SafeArea(
        child: leaderboardResponse.when(
          data: (leaderboard) {
            if (leaderboard.data == null) {
              return Center(child: Text('No data'));
            }
            return Container(
                margin: EdgeInsets.fromLTRB(24, 10, 24, 24),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xFFF8F9FA),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFEEEEEE))),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: leaderboard.data?.topUsers?.length,
                          itemBuilder: (context, index) {
                            final user = leaderboard.data?.topUsers?[index];
                            return Container(
                              margin: EdgeInsets.only(bottom: 16),
                              padding: EdgeInsets.only(bottom: 16),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xFFEEEEEE), width: 1))),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 40,
                                      child: Text(
                                        user?.rank ?? "",
                                        style: context.titleSmall,
                                      )),
                                  Expanded(
                                    child: Text(
                                      user?.username ?? "",
                                      style: context.titleSmall,
                                    ),
                                  ),
                                  SizedBox(
                                      width: 60,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xFFDAFFDA),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                                color: primaryColor,
                                                width: 0.5)),
                                        child: Center(
                                          child: Text(
                                            user?.sumPoint.toString() ?? '0',
                                            style: AppTextStyle.title12
                                                .copyWith(color: primaryColor),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            );
                          }),
                    ),
                    leaderboard.data?.loggedInUser == null
                        ? Container()
                        : Container(
                            child: Table(
                              columnWidths: {
                                0: FixedColumnWidth(40),
                                1: FlexColumnWidth(4),
                                2: FixedColumnWidth(60),
                              },
                              border: TableBorder(
                                  top: BorderSide(color: Color(0xFF898989))),
                              children: [
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    child: Text(
                                      leaderboard.data?.loggedInUser?.rank ??
                                          "",
                                      style: context.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    child: Text(
                                      leaderboard
                                              .data?.loggedInUser?.username ??
                                          "",
                                      style: context.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xFFDAFFDA),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                                color: primaryColor,
                                                width: 0.5)),
                                        child: Center(
                                          child: Text(
                                            leaderboard.data?.loggedInUser
                                                    ?.sumPoint
                                                    .toString() ??
                                                '0',
                                            style: AppTextStyle.title12
                                                .copyWith(color: primaryColor),
                                          ),
                                        ),
                                      )),
                                ])
                              ],
                            ),
                          )
                  ],
                ));
          },
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Container(
              height: size.height * 0.6,
              child: Center(child: Text('Error $error'))),
        ),
      ),
    );
  }
}
