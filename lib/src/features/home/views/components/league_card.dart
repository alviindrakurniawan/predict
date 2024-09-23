import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/home/Football/views/soccer_predict_view.dart';
import 'package:scora/src/features/home/Football/models/soccer_fixture.dart';
import 'dart:developer' as developer;

import 'package:scora/src/features/home/Football/views/soccer_summary_view.dart';

class MatchCard extends StatelessWidget {
  final bool withButton;
  final bool predict;
  final String title;
  final Function()? onPressedIcon;
  final String leagueLogo;
  final List<SoccerFixtureResult>? listFixture;
  final List<MatchDetails> matchDetails;

  const MatchCard({
    Key? key,
    this.withButton = true,
    this.predict = false,
    this.onPressedIcon,
    required this.leagueLogo,
    required this.title,
    required this.matchDetails,
    this.listFixture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
        boxShadow: withButton
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                )
              ]
            : null,
        border: withButton
            ? Border.all(color: Color(0xFFEEEEEE))
            : Border.all(color: Color(0xFFA9A9A9)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // League Logo
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(right: 20),
                child: leagueLogo.isNotEmpty
                    ? Image.network(
                        leagueLogo,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.sports_soccer,
                            size: 40,
                            color: Theme.of(context).primaryColor,
                          );
                        },
                      )
                    : Icon(
                        Icons.sports_soccer,
                        size: 40,
                        color: Theme.of(context).primaryColor,
                      ),
              ),
              // Title
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: context.titleSmall,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              // Optional Button
              if (withButton)
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: onPressedIcon,
                    icon: Icon(
                      Icons.navigate_next,
                      size: 40,
                      color: Colors.black54,
                    ),
                  ),
                ),
            ],
          ),
          // SizedBox(height: 12),
          Divider(color: Color(0xFFEEEEEE), thickness: 1),
          SizedBox(height: 16),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(0.5),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(0.5),
              3: FlexColumnWidth(1),
            },
            children: matchDetails.map((match) {
              final time =
                  match.event_live != "0" ? "${match.event_status}'" : match.time;

              return TableRow(
                decoration: BoxDecoration(
                  color: match.backgroundColor,
                ),
                children: [
                  GestureDetector(
                    onTap: predict
                        ? () {
                            developer.log(
                                'event match: ${match.event_status.toString()}');
                            if (match.event_status == "") {
                              context.push(SoccerPredictView.routeName,
                                  extra: match.matchId);
                            } else {
                              context.push(SoccerSummaryView.routeName,
                                  extra: match.matchId);
                            }
                          }
                        : null,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(time ?? "", style: AppTextStyle.title12),
                    ),
                  ),
                  GestureDetector(
                    onTap: predict
                        ? () {
                            developer.log(
                                'event match: ${match.event_status.toString()}');
                            if (match.event_status == "") {
                              context.push(SoccerPredictView.routeName,
                                  extra: match.matchId);
                            } else {
                              context.push(SoccerSummaryView.routeName,
                                  extra: match.matchId);
                            }
                          }
                        : null,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(match.homeTeam, style: AppTextStyle.title12),
                    ),
                  ),
                  GestureDetector(
                    onTap: predict
                        ? () {
                            developer.log(
                                'event match: ${match.event_status.toString()}');
                            if (match.event_status == "") {
                              context.push(SoccerPredictView.routeName,
                                  extra: match.matchId);
                            } else {
                              context.push(SoccerSummaryView.routeName,
                                  extra: match.matchId);
                            }
                          }
                        : null,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(match.score, style: AppTextStyle.title12),
                    ),
                  ),
                  GestureDetector(
                    onTap: predict
                        ? () {
                            developer.log(
                                'event match: ${match.event_status.toString()}');
                            if (match.event_status == "") {
                              context.push(SoccerPredictView.routeName,
                                  extra: match.matchId);
                            } else {
                              context.push(SoccerSummaryView.routeName,
                                  extra: match.matchId);
                            }
                          }
                        : null,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(match.awayTeam, style: AppTextStyle.title12),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class MatchDetails {
  final String time;
  final String homeTeam;
  final String awayTeam;
  final String score;
  final String? event_status;
  final String? event_live;
  final Color backgroundColor;
  final String? matchId;

  MatchDetails(
      {required this.time,
      required this.homeTeam,
      required this.awayTeam,
      required this.score,
      required this.backgroundColor,
      this.event_live,
      this.event_status,
      this.matchId});
}
