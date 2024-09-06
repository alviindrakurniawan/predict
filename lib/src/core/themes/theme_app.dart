import 'package:flutter/material.dart';
import 'package:scora/src/core/core.dart';


class AppTheme {
  static ThemeData get light => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFFFFF),
          dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
        ),

        // Text Theme
      scaffoldBackgroundColor: Colors.white,
        primaryTextTheme: AppTextStyle.light,
        textTheme: AppTextStyle.light,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor,
          selectedLabelStyle: AppTextStyle.titleSmall,
          unselectedLabelStyle: AppTextStyle.titleSmall,
        ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      // backgroundColor: Colors.white
    )


      );

  static ThemeData get dark => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF000000),
          brightness: Brightness.dark,
          dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
        ),


        // Text Theme
        primaryTextTheme: AppTextStyle.dark,
        textTheme: AppTextStyle.dark,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: greenHighlightColor,
          selectedLabelStyle: AppTextStyle.titleSmall,
          unselectedLabelStyle: AppTextStyle.titleSmall,
        ),
      );
}
