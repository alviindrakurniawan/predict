import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:go_router/go_router.dart';
import '../../../../src/shared/shared.dart';
import 'components/bottom_navigation.dart';

class NavigationView extends HookConsumerWidget {
  final Widget child;

  const NavigationView({super.key, required this.child});

  static const routeName = '/navigation';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: child,
        bottomNavigationBar: const NavigationBottomNav()
        // floatingActionButton: const CThemeFAB(),
        );
  }
}
