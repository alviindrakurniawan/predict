import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/home/Football/views/tab_fixtures.dart';
import 'package:scora/src/features/home/Football/views/tab_result.dart';
import 'package:scora/src/shared/dto/soccer_league_dto.dart';

class SoccerDetailLeague extends HookConsumerWidget {
 final SoccerDetailLeagueDTO soccerDetailLeagueDTO;
  const SoccerDetailLeague({required this.soccerDetailLeagueDTO});

  static const routeName = '/detail-league';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final _tabController = useTabController(initialLength: 2);
    final leagueId = soccerDetailLeagueDTO.leagueId;
    final leagueName = soccerDetailLeagueDTO.leagueName;


    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text(
          leagueName,
          style: context.headlineSmall,
        ),
        leading: GestureDetector(
          onTap: () {
            context.pop(true);
          },
          child: Icon(
            Icons.arrow_back,
            size: 28,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: primaryColor,
          labelColor: primaryColor,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          tabs: [
            Tab(text: 'Fixtures',height: 40,),
            Tab(text: 'Results',height: 40,),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TabFixtures(leagueId: leagueId,leagueName: leagueName,),
          TabResult(leagueId: leagueId,leagueName:leagueName)
          // Second tab content (Results)
          // ResultsView(),
        ],
      )
    );
  }
}
