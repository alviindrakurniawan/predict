import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/main.dart';
import 'package:scora/src/features/home/controllers/fixture_controller.dart';
import 'package:scora/src/features/home/controllers/selected_date_controller.dart';
import 'package:scora/src/features/home/views/components/date_timeline.dart';
import 'package:scora/src/features/home/views/components/list_soccer_league.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/home/views/search_view.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    final selectedDateState = ref.watch(selectedDateControllerProvider);
    final selectedDate = ref.read(selectedDateControllerProvider.notifier);
    final isLive = useState<bool>(false);

    void handleLiveChange(bool live) {
      isLive.value = live;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Predict',
            style: context.headlineSmall,
            textAlign: TextAlign.left,
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, size: 32),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.push(SearchView.routeName);
            },
            icon: const Icon(Icons.search, size: 32),
          ),
        ],
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
      drawer: Drawer(
        width: size.width * 0.6,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 24, top: 44),
                child: Text(
                  'Scora',
                  style: context.headlineSmall,
                ),
              ),
              const SizedBox(height: 28),
              ListTile(
                title: Text('Football', style: context.headlineSmall),
                leading: const Icon(Icons.sports_soccer, size: 32),
                onTap: () {},
              ),
              ListTile(
                title: Text('Basketball', style: context.headlineSmall),
                leading: const Icon(Icons.sports_basketball, size: 32),
                onTap: () {},
              ),
              ListTile(
                title: Text('Cricket', style: context.headlineSmall),
                leading: const Icon(Icons.sports_cricket, size: 32),
                onTap: () {},
              ),
              ListTile(
                title: Text('Tennis', style: context.headlineSmall),
                leading: const Icon(Icons.sports_tennis, size: 32),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: ListSoccerLeague(),
    );
  }
}
