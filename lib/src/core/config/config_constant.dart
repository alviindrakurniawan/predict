import 'package:exposed/exposed.dart';
import 'package:flutter/material.dart';

class Config {
  static const String appName = 'Scora';
  static const String initRoute = '/';
  static const String fontFamily = 'Urbanist';
}

class Endpoint {
  static const String base = String.fromEnvironment('API_URI');
  static const String gmapKey = String.fromEnvironment('GMAP_KEY');
}

class Gap {
  static const double xxs = 2.0;
  static const double xs = 4.0;
  static const double s = 8.0;
  static const double m = 16.0;
  static const double l = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;
  static const double huge = 64.0;
  static double horz(BuildContext context) => context.width * 0.05;
  static double vert(BuildContext context) => context.height * 0.05;

  // 4 circle radius
  static const double circle = 90.0;
}

class Regex {
  static final RegExp digit = RegExp(r"^[0]$|^[1-9][0-9]*$");

  static final RegExp digitDecimal = RegExp(r"^[+-]?((?!0\.0)[0-9]+([.][0-9]*)?|[.][0-9]+)$");

  static final alphabet = RegExp(r'[a-zA-Z\s]');

  static final alphaNumeric = RegExp(r'[a-zA-Z0-9\s]');
}
