import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/app.dart';

void enableOverlay() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values);
}

void disableOverlay() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

void setDeviceOrientation({up = true, down = true, left = true, right = true}) {
  SystemChrome.setPreferredOrientations([
    if (up) DeviceOrientation.portraitUp,
    if (down) DeviceOrientation.portraitDown,
    if (left) DeviceOrientation.landscapeLeft,
    if (right) DeviceOrientation.landscapeRight,
  ]);
}

void main() async {
  late GoRouter globalRouter;

  WidgetsFlutterBinding.ensureInitialized();
  // unawaited(MobileAds.instance.initialize());
  // MobileAds.instance.initialize();
  setDeviceOrientation();
  await dotenv.load(fileName: ".env");

  runApp(
    const ProviderScope(child: MainApp()),
  );
}
