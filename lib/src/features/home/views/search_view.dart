import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/home/controllers/fixture_controller.dart';
import 'package:scora/src/features/home/controllers/selected_date_controller.dart';
import 'package:scora/src/features/home/controllers/soccer_fixture_controller.dart';
import 'package:scora/src/features/home/views/components/date_timeline.dart';
import 'package:scora/src/features/home/views/components/list_soccer_league.dart';
import 'package:scora/src/shared/providers/provider_search.dart';

class SearchView extends HookConsumerWidget {
  const SearchView({super.key});

  static const routeName = '/search';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final focusNode = useFocusNode();
    final isLive = useState<bool>(false);
    final selectedDateState = ref.watch(selectedDateControllerProvider);
    final debounceTimer = useRef<Timer?>(null);

    void handleLiveChange(bool live) {
      isLive.value = live;
    }

    useEffect((){
      focusNode.requestFocus();
      return null;
    },[]);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        toolbarHeight: 60,
        leading: GestureDetector(
          onTap: (){context.pop(true);},
          child: Icon(
            Icons.arrow_back,
            size: 28,
          ),
        ),
        title: Container(
          height: 30,
          color: Color(0xFFF6F6F6),
          margin: EdgeInsets.only(right: 20),
          child: TextFormField(
            controller: searchController,
            focusNode: focusNode,
            onChanged: (value){
              debounceTimer.value?.cancel();
              debounceTimer.value = Timer(Duration(milliseconds: 500), (){
                ref.read(searchProvider.notifier).set(value);
                ref.read(soccerFixtureControllerProvider.notifier).searchLeague(value);
              });
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xFFC5C5C5),
                size: 22,
              ),
              hintText: 'Search',
              hintStyle: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFFC5C5C5),
                  fontWeight: FontWeight.w400),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(color: Color(0xFFDFDFDF))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(color: Color(0xFFDFDFDF))),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(color: Color(0xFFDFDFDF))),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70.0), // Adjust the height as needed
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Adjust padding as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // ListFixtureFilter(),
                const SizedBox(height: 8),
                RectangularDateTimeline(
                  initialFocusDate: selectedDateState,
                  onLiveChange: handleLiveChange,
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListSoccerLeague(),
    );
  }
}
