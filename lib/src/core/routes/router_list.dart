import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/auth/views/create_new_password.dart';
import 'package:scora/src/features/auth/views/signup_otp_view.dart';
import 'package:scora/src/features/home/Football/views/soccer_predict_view.dart';
import 'package:scora/src/features/home/views/detail_league.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scora/src/features/home/views/league_overview.dart';
import 'package:scora/src/features/home/views/search_view.dart';
import 'package:scora/src/features/leaderboard/views/leaderboard_view.dart';
import 'package:scora/src/features/predict/views/history_predict.dart';
import 'package:scora/src/features/profile/models/user_model.dart';
import 'package:scora/src/features/profile/views/edit_profile_view.dart';
import 'package:scora/src/features/profile/views/referral_view.dart';
import 'package:scora/src/features/task/views/task_view.dart';
import 'package:scora/src/shared/dto/soccer_league_dto.dart';
import 'package:scora/src/shared/dto/soccer_overview_dto.dart';
import 'dart:developer' as developer;
import '../../features/features.dart';
import '../config/config.dart';
import 'router_widget.dart';

final _rootKey = GlobalKey<NavigatorState>();
final _shellNavKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: Config.initRoute,
  routes: <RouteBase>[
    goRoute(
      parentNavigatorKey: _rootKey,
      path: SplashView.routeName,
      child: (context, state) => const SplashView(),
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: LoginView.routeName,
      child: (context, state) => const LoginView(),
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: SignupView.routeName,
      child: (context, state) => const SignupView(),
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: SignupOtpView.routeName,
      child: (context, state) {
      final email = state.extra as String;
      return SignupOtpView(email: email);
      },
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: CreateProfileView.routeName,
      child: (context, state) => const CreateProfileView(),
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: EditProfileView.routeName,
      child: (context, state) {
        final userModel = state.extra as UserModel;
        return EditProfileView(userModel: userModel);
      },
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: WelcomeView.routeName,
      child: (context, state) => const WelcomeView(),
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: ForgetPassView.routeName,
      child: (context, state) => const ForgetPassView(),
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: ForgetPasswordOtpView.routeName,
      child: (context, state) {
        final email = state.extra as String;
        return ForgetPasswordOtpView(email: email);
      },
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: SoccerLeagueOverview.routeName,
      child: (context, state) {
        final soccerOverviewDTO = state.extra as SoccerOverviewDTO;
        return SoccerLeagueOverview(soccerOverviewDTO: soccerOverviewDTO);
      },
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: SoccerDetailLeague.routeName,
      child: (context, state) {
        final soccerDetailLeagueDTO = state.extra as SoccerDetailLeagueDTO;
        return SoccerDetailLeague(soccerDetailLeagueDTO: soccerDetailLeagueDTO,);
      },
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: SoccerPredictView.routeName,
      child: (context, state) {
        final matchId = state.extra as String;
        return SoccerPredictView(matchId: matchId);
      },
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: InputWalletView.routeName,
      child: (context, state) => const InputWalletView(),
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: InputWalletView.routeName,
      child: (context, state) => const InputWalletView(),
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: CreateNewPasswordView.routeName,
      child: (context, state) {
        final email = state.extra as String;
        return CreateNewPasswordView(email: email);}
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: ReferralView.routeName,
      child: (context, state) {
        final referralCode = state.extra as String;
        return ReferralView(referralCode: referralCode);}
    ),
    goRoute(
      parentNavigatorKey: _rootKey,
      path: SearchView.routeName,
      child: (context, state) => const SearchView(),
    ),
    shellRoute(
      parentNavigatorKey: _rootKey,
      navigatorKey: _shellNavKey,
      childParent: (Widget child) => NavigationView(child: child),
      routes: [
        goRoute(
          parentNavigatorKey: _shellNavKey,
          path: HomeView.routeName,
          child: (context, state) => const HomeView(),
        ),
        goRoute(
          parentNavigatorKey: _shellNavKey,
          path: HistoryPredict.routeName,
          child: (context, state) =>  HistoryPredict(),
        ),
        goRoute(
          parentNavigatorKey: _shellNavKey,
          path: LeaderboardView.routeName,
          child: (context, state) =>  LeaderboardView(),
        ),
        goRoute(
          parentNavigatorKey: _shellNavKey,
          path: TaskView.routeName,
          child: (context, state) => const TaskView(),
        ),
        goRoute(
          parentNavigatorKey: _shellNavKey,
          path: ProfileView.routeName,
          child: (context, state) => ProfileView(),
        ),
      ],
    ),
  ],
);


final goRouterProvider = Provider<GoRouter>((ref) {
  return appRouter;
});