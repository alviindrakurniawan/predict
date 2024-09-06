import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/shared/providers/providers.dart';
import 'package:scora/src/shared/providers/remember_me.dart';
import 'package:scora/src/shared/services/preferences_service.dart';
//
// final preloadProvider = AutoDisposeFutureProviderFamily<bool, BuildContext>((ref, context) async {
//
//
//
//   return true;
// });

final rememberMePreloadProvider = AutoDisposeFutureProviderFamily<bool,String>((ref,value) async {
  try {
    final getRememberMe = await ref.read(prefProvider).getPref('rememberMe', false);


    await ref.read(sessionProviderProvider.notifier).set(getRememberMe);
    return getRememberMe;
  } catch (e) {
    rethrow;
  }
});
