import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/features/leaderboard/views/leaderboard_view.dart';
import 'package:scora/src/features/predict/views/history_predict.dart';
import 'package:scora/src/features/task/views/task_view.dart';

import '../../features.dart';

final navigationPageProvider =
    NotifierProvider.autoDispose<NavigationPageNotifier, int>(
        NavigationPageNotifier.new);

class NavigationPageNotifier extends AutoDisposeNotifier<int> {
  @override
  build() => 0;

  @override
  set state(int value) {
    // TODO: implement state
    super.state = value;
  }

  void onDestinationSelected(BuildContext context, {required int value}) {
    state = value;
    switch (state) {
      case 0:
        context.go(HomeView.routeName);
      case 1:
        context.go(HistoryPredict.routeName);
      case 2:
        context.go(LeaderboardView.routeName);
      case 3:
        context.go(TaskView.routeName);
      default:
        context.go(ProfileView.routeName);
    }
  }
}
