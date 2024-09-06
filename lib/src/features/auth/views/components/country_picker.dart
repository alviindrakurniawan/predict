import 'dart:async';

import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:scora/src/core/config/config.dart';
import 'package:scora/src/core/core.dart';

class CountryPickerModal extends HookWidget {
  final ValueNotifier<String> selectedCountryId; // Store the selected country ID
  final Map<String, String> countries; // Map of country ID to country name
  final TextEditingController countryController;

  const CountryPickerModal({
    required this.selectedCountryId,
    required this.countries,
    required this.countryController,
  });

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    final filteredCountries = useState<Map<String, String>>(countries);
    final debounceTimer = useRef<Timer?>(null);

    return DraggableScrollableSheet(
      initialChildSize: 1.0,
      minChildSize: 1.0,
      maxChildSize: 1.0,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: EdgeInsets.fromLTRB(Gap.m, Gap.m, Gap.m, Gap.m),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pick your country', style: context.headlineSmall),
              SizedBox(height: 5),
              Divider(height: 1),
              SizedBox(height: 12),
              TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search country',
                  hintStyle: context.bodyMedium,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.grey.shade100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (value) {
                  debounceTimer.value?.cancel();
                  debounceTimer.value = Timer(Duration(milliseconds: 300), () {
                    filteredCountries.value = Map.fromEntries(
                      countries.entries.where((entry) =>
                          entry.value.toLowerCase().contains(value.toLowerCase())
                      ),
                    );
                  });
                },
              ),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: filteredCountries.value.length,
                  itemBuilder: (context, index) {
                    final countryId = filteredCountries.value.keys.elementAt(index);
                    final countryName = filteredCountries.value[countryId]!;
                    return ListTile(
                      title: Text(countryName, style: AppTextStyle.titleMedium),
                      onTap: () {
                        selectedCountryId.value = countryId;
                        countryController.text = countryName;
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
