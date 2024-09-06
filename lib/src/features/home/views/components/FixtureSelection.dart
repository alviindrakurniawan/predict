import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/home/controllers/fixture_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scora/src/features/home/controllers/fixture_controller.dart';

class ListFixtureFilter extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupedFixtures = ref.watch(fixtureControllerProvider).valueOrNull;
    final selectedCountries =
        ref.watch(fixtureControllerProvider.notifier).selectedCountries;
    if (groupedFixtures == null) {
      return Center(child: CircularProgressIndicator());
    }

    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: groupedFixtures.keys.length,
        itemBuilder: (context, index) {
          final country = groupedFixtures.keys.elementAt(index);
          final isSelected =
              selectedCountries.any((element) => element[country] == true);

          return GestureDetector(
            onTap: () {
              ref
                  .read(fixtureControllerProvider.notifier)
                  .toggleCountrySelection(country);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: isSelected ? backgroundGreenlight: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected ? primaryColor : Colors.grey.shade200,
                  width: 1.0
                )
              ),
              child: Center(
                child: Text(
                  country ?? 'Unknown',
                  style: TextStyle(
                    color: isSelected ? primaryColor : Colors.grey,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
