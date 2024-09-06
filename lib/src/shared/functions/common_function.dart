import 'dart:io';

import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

void fieldFocusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}


Future<String?> getDeviceToken() async {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  String? deviceId = '';
  if (Platform.isIOS) {
    final IosDeviceInfo iosDeviceInfo = await deviceInfoPlugin.iosInfo;
    deviceId = iosDeviceInfo.identifierForVendor;
  } else if(Platform.isAndroid) {
    final AndroidDeviceInfo androidDeviceInfo = await deviceInfoPlugin.androidInfo;
    deviceId = androidDeviceInfo.id;
  }
  return deviceId;
}

