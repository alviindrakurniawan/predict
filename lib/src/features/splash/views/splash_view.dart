import 'package:exposed/exposed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/auth/views/welcome_view.dart';
import 'package:scora/src/shared/providers/provider_rememberme_preload.dart';
import 'package:scora/src/shared/providers/remember_me.dart';
import 'package:scora/src/shared/providers/timezone_provider.dart';

import '../../../../src/shared/shared.dart';
import '../../features.dart';

class SplashView extends HookConsumerWidget {
  final Duration duration;

  const SplashView({super.key, this.duration = const Duration(seconds: 2)});

  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProviderProvider);
    final preload = ref.watch(sessionPreloadProvider(session));
    final rememberMe = ref.watch(rememberMeProvider);
    final preloadRememberMe = ref.watch(rememberMePreloadProvider(rememberMe));
    final timezone = ref.watch(timezoneProvider);


    final size = MediaQuery.of(context).size;

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        preload.whenData(
          (_) {
            if (rememberMe) {
              Future.delayed(
                  duration,
                  () =>
                      context.mounted ? context.go(HomeView.routeName) : null);
            } else {
              Future.delayed(
                  duration,
                  () => context.mounted
                      ? context.go(WelcomeView.routeName)
                      : null);
            }
          },
        );
      });
      return null;
    });

    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/logo.png',
              height: size.height / 2.5,
              width: size.height / 2.5,
            ),
            Text('Predict', style: context.displayLarge),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
                child: Text("Predict is an innovative Predict2Earn application designed for sports enthusiasts who love the thrill of predicting match outcomes. As a live score app, Predict offers real-time updates for various sports, ensuring you never miss out on the action. Whether you're a fan of football, basketball, or tennis, Predict provides an engaging platform where you can use your sports knowledge to earn rewards.",style: AppTextStyle.label16,textAlign: TextAlign.justify,))
          ],
        ),
      ),
    );
  }
}
