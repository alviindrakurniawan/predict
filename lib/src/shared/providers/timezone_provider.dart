import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
part 'timezone_provider.g.dart';

@Riverpod(keepAlive: true)
class Timezone extends _$Timezone {
  @override
  String build() {
    setTimezone();
    return '';

  }

  Future<void> setTimezone() async {
    try {
      final String timezone = await FlutterTimezone.getLocalTimezone();
      state = timezone;
    } catch (e) {
      state = 'Error getting TimeZone';
    }
  }

  // Method to reset the state
  Future<void> reset() async {
    state = "";
  }
}