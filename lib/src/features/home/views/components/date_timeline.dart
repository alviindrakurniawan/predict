import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/home/controllers/selected_date_controller.dart';
import 'package:scora/src/features/home/controllers/soccer_fixture_controller.dart';

class RectangularDateTimeline extends HookConsumerWidget {
  final DateTime initialFocusDate;
  final Function(bool) onLiveChange;
  final bool isPredict;

  const RectangularDateTimeline({
    required this.initialFocusDate,
    required this.onLiveChange,
    this.isPredict = false,
  });



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusDate = useState(initialFocusDate);
    final selectedDateState = ref.watch(selectedDateControllerProvider);
    final selectedDate = ref.read(selectedDateControllerProvider.notifier);
    final timelineKey = GlobalKey();

    final isLive = ref.watch(isLiveProvider);

    final size = MediaQuery.of(context).size;
    final dateController = EasyInfiniteDateTimelineController();
    final changeDate = useState<DateTime>(DateTime.now());

    final today = DateTime.now();
    final minimumDateTime =
        DateTime(today.year, today.month, today.day).subtract(Duration(days: 7));
    final dateNow = DateTime(today.year, today.month, today.day);
    final maksimumDateTime =
    DateTime(today.year, today.month, today.day).add(Duration(days: 7));

    void _showDatePicker(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).size.height / 2.5,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 10, top: 10),
                  child: TextButton(
                    child: Text(
                      'Done',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                    onPressed: () {
                      selectedDate.setDateTime(changeDate.value);
                      context.pop(true);
                    },
                  ),
                ),
                Expanded(
                  child: CupertinoDatePicker(
                    dateOrder: DatePickerDateOrder.dmy,
                    minimumDate: isPredict?dateNow:minimumDateTime,
                    maximumDate: maksimumDateTime,
                    initialDateTime: selectedDateState,
                    mode: CupertinoDatePickerMode.date,
                    itemExtent: 60,
                    onDateTimeChanged: (newDate) {
                      changeDate.value = newDate;
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    }


    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isPredict?SizedBox():GestureDetector(
          onTap: () {
            ref.read(isLiveProvider.notifier).state = !isLive;
          },
          child: Container(

            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: isLive ? primaryColor: Colors.white,
              border: Border.all(
                  color: isLive ? Colors.grey.shade200 : primaryColor,
                  width: 2.0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Live',
                style: isLive
                    ? TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                )
                    : TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),

              ),
            ),
          ),
        ),
        Container(
          width: isPredict?size.width*0.8:size.width * 0.7,
          child: EasyInfiniteDateTimeLine(
            controller: dateController,
            key: timelineKey,
            selectionMode: const SelectionMode.autoCenter(),
            firstDate: isPredict?dateNow:minimumDateTime,
            lastDate: maksimumDateTime,
            showTimelineHeader: false,
            focusDate: selectedDateState,
            onDateChange: (date) {
              selectedDate.setDateTime(date);
            },
            dayProps: const EasyDayProps(
              width: 36.0,
              height: 54.0,
            ),
            itemBuilder: (
              BuildContext context,
              DateTime date,
              bool isSelected,
              VoidCallback onTap,
            ) {
              return InkResponse(
                onTap: isLive?null:onTap,
                child: Container(
                  width: 64.0,
                  height: 64.0,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? primaryColor
                        : Colors.white, // Lighter color for unselected
                    borderRadius: BorderRadius.circular(
                        12), // Rounded corners for the rectangle
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          EasyDateFormatter.shortDayName(date, "en_US"),
                          style: isSelected
                              ? TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500)
                              : TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          date.day.toString(),
                          style: isSelected
                              ? TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)
                              : TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
       SizedBox(width: 8),
        GestureDetector(
          onTap: () {
            _showDatePicker(context);
          },
          child: Container(
            child: const Icon(
              Icons.calendar_month_rounded,
              size: 32,
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
