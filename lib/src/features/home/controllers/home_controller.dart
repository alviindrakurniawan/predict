import 'package:flutter_riverpod/flutter_riverpod.dart';

class Match {
  final String title;

  Match(this.title);
}

class HomeControllerNotifier extends AutoDisposeNotifier<Map<DateTime, List<Match>>> {
  DateTime _selectedDate = DateTime.now().toUtc();

  DateTime get selectedDate => _selectedDate;

  List<Match> get matches => state[_selectedDate] ?? [];

  @override
  Map<DateTime, List<Match>> build() {
    return {};
  }

  void setSelectedDate(DateTime newDate) {
    _selectedDate = newDate;
    state = state;
  }

}

final HomeProvider = NotifierProvider.autoDispose<HomeControllerNotifier, Map<DateTime, List<Match>>>(
  HomeControllerNotifier.new,
);
