import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/leaderboard/controllers/leaderboard_category_controller.dart';
import 'dart:developer' as developer;

import 'package:scora/src/features/leaderboard/controllers/leaderboard_controller.dart';
import 'package:scora/src/features/leaderboard/models/leaderboard_category_model.dart';
import 'package:scora/src/shared/widgets/widget_no_data.dart';

class LeaderboardView extends HookConsumerWidget {
  const LeaderboardView({
    super.key,
    // required this.child
  });

  static const routeName = '/leaderboard';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = useState<String>("Weekly");

    const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

    final category = ref.watch(leaderboardCategoryControllerProvider);

    final dropdownLabel = useState<String>('');
    final dropdownValue = useState<String>('');

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
                      ref
                          .read(leaderboardControllerProvider.notifier)
                          .getWeeklyLeaderboard();

                      ref
                          .read(leaderboardCategoryControllerProvider.notifier)
                          .getWeeklyLeaderboardCategory();
                    },
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
                      ref
                          .read(leaderboardCategoryControllerProvider.notifier)
                          .getMonthlyCategoryLeaderboard();
                    },
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
                      ref
                          .read(leaderboardCategoryControllerProvider.notifier)
                          .getYearlyCategoryLeaderboard();
                    },
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  category.when(
                      data: (data) => Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFA1A1A1)),
                                  borderRadius: BorderRadius.circular(8)),
                              child: DropdownButton(
                                isExpanded: true,
                                value: dropdownValue.value.isNotEmpty
                                    ? dropdownValue.value
                                    : null,
                                items: data.data?.category
                                    .map<DropdownMenuItem<String>>(
                                        (Category value) {
                                  return DropdownMenuItem<String>(
                                    value: value.id,
                                    child: Text(value.name),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  if (value != null && value.isNotEmpty) {
                                    dropdownValue.value = value;
                                  }
                                },
                              ),
                            ),
                          ),
                      error: (error, stackTrace) => Expanded(
                        child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFA1A1A1)),
                                borderRadius: BorderRadius.circular(8)),
                            child: Text('Error')),
                      ),
                      loading: () => Expanded(
                        child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFA1A1A1)),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(child: Text('Loading'))),
                      ))
                ],
              ),
            )),
      ),
      body: SafeArea(
        child: leaderboardResponse.when(
          data: (leaderboard) {
            developer.log(leaderboard.toString());
            if (leaderboard.data?.topUsers?.isEmpty ?? true) {
              return WidgetNoData();
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 28,
                ),
                Flexible(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: leaderboard.data?.topUsers?.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.fromLTRB(24, 0, 12, 24),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17.5),
                            decoration: BoxDecoration(
                                color: Color(0xFFF8F9FA),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Color(0xFFEEEEEE))),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 40,
                                    child: Text(
                                      leaderboard.data?.topUsers?[index].rank ??
                                          "",
                                      style: context.titleSmall,
                                    )),
                                Expanded(
                                  child: Text(
                                    leaderboard
                                            .data?.topUsers?[index].username ??
                                        "",
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
                                              color: primaryColor, width: 0.5)),
                                      child: Center(
                                        child: Text(
                                          leaderboard.data?.topUsers?[index]
                                                  .sumPoint
                                                  .toString() ??
                                              '0',
                                          style: AppTextStyle.title12
                                              .copyWith(color: primaryColor),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          );
                        })),
                leaderboard.data?.loggedInUser == null
                    ? Container()
                    : Container(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(24, 12, 12, 24),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 17.5),
                          decoration: BoxDecoration(
                              color: Color(0xFFF8F9FA),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xFFEEEEEE))),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 40,
                                  child: Text(
                                    leaderboard.data?.loggedInUser?.rank ?? "",
                                    style: context.titleSmall,
                                  )),
                              Expanded(
                                child: Text(
                                  leaderboard.data?.loggedInUser?.username ??
                                      "",
                                  style: context.titleSmall,
                                ),
                              ),
                              SizedBox(
                                  width: 60,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFDAFFDA),
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                            color: primaryColor, width: 0.5)),
                                    child: Center(
                                      child: Text(
                                        leaderboard.data?.loggedInUser?.sumPoint
                                                .toString() ??
                                            '0',
                                        style: AppTextStyle.title12
                                            .copyWith(color: primaryColor),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      )
              ],
            );
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

// Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Flexible(
//                       child: ListView.builder(
//                           shrinkWrap: true,
//                           itemCount: leaderboard.data?.topUsers?.length,
//                           itemBuilder: (context, index) {
//                             final user = leaderboard.data?.topUsers?[index];
//                             return Container(
//                               margin: EdgeInsets.only(bottom: 16),
//                               padding: EdgeInsets.only(bottom: 16),
//                               decoration: BoxDecoration(
//                                   border: Border(
//                                       bottom: BorderSide(
//                                           color: Color(0xFFEEEEEE), width: 1))),
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                       width: 40,
//                                       child: Text(
//                                         user?.rank ?? "",
//                                         style: context.titleSmall,
//                                       )),
//                                   Expanded(
//                                     child: Text(
//                                       user?.username ?? "",
//                                       style: context.titleSmall,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                       width: 60,
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                             color: Color(0xFFDAFFDA),
//                                             borderRadius:
//                                                 BorderRadius.circular(6),
//                                             border: Border.all(
//                                                 color: primaryColor,
//                                                 width: 0.5)),
//                                         child: Center(
//                                           child: Text(
//                                             user?.sumPoint.toString() ?? '0',
//                                             style: AppTextStyle.title12
//                                                 .copyWith(color: primaryColor),
//                                           ),
//                                         ),
//                                       ))
//                                 ],
//                               ),
//                             );
//                           }),
//                     ),
//                     leaderboard.data?.loggedInUser == null
//                         ? Container()
//                         : Container(
//                             child: Table(
//                               columnWidths: {
//                                 0: FixedColumnWidth(40),
//                                 1: FlexColumnWidth(4),
//                                 2: FixedColumnWidth(60),
//                               },
//                               border: TableBorder(
//                                   top: BorderSide(color: Color(0xFF898989))),
//                               children: [
//                                 TableRow(children: [
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 16),
//                                     child: Text(
//                                       leaderboard.data?.loggedInUser?.rank ??
//                                           "",
//                                       style: context.titleSmall,
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 16),
//                                     child: Text(
//                                       leaderboard
//                                               .data?.loggedInUser?.username ??
//                                           "",
//                                       style: context.titleSmall,
//                                     ),
//                                   ),
//                                   Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           vertical: 16),
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                             color: Color(0xFFDAFFDA),
//                                             borderRadius:
//                                                 BorderRadius.circular(6),
//                                             border: Border.all(
//                                                 color: primaryColor,
//                                                 width: 0.5)),
//                                         child: Center(
//                                           child: Text(
//                                             leaderboard.data?.loggedInUser
//                                                     ?.sumPoint
//                                                     .toString() ??
//                                                 '0',
//                                             style: AppTextStyle.title12
//                                                 .copyWith(color: primaryColor),
//                                           ),
//                                         ),
//                                       )),
//                                 ])
//                               ],
//                             ),
//                           )
//                   ],
//                 )
