import 'package:exposed/exposed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/features/auth/views/welcome_view.dart';
import 'package:scora/src/shared/providers/remember_me.dart';

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
    final remmemberMe = ref.watch(rememberMeProvider);

    final size = MediaQuery.of(context).size;


    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        preload.whenData((_) {
          Future.delayed(duration, () => context.mounted ? context.go(WelcomeView.routeName) : null);
        });
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
                    height: size.height/3.5,
                    width: size.height/3.5,
            ),
            SizedBox(height: 20,),
            Text('Predict',style: context.displayLarge)
            
          ],
        )
      )
    );
  }
}
