import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_date_controller.g.dart';

@Riverpod(keepAlive: true)
class SelectedDateController extends _$SelectedDateController{

  @override
  DateTime build() {
    return DateTime.now().toUtc();
  }

  void setDateTime (DateTime date) {
    state = date;
  }


}
