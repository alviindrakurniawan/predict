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

final sessionPreloadProvider = AutoDisposeFutureProviderFamily<String,String>((ref,value) async {
  try {
    final getSession = await ref.read(prefProvider).getPref('token', '');


    await ref.read(sessionProviderProvider.notifier).set(getSession);
    return getSession;
  } catch (e) {
    rethrow;
  }
});
