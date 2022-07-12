import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';

class ContractsCalendar extends StatelessWidget {
  const ContractsCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalendarAgenda(
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 60)),
      lastDate: DateTime.now().add(const Duration(days: 4)),
      onDateSelected: (date) {},
      backgroundColor: ColorConst.instance.kDarker,
      calendarEventColor: ColorConst.instance.kDarker,
      calendarEventSelectedColor: ColorConst.instance.kWhite,
      selectedDateColor: ColorConst.instance.kLightGreen,
      dateColor: ColorConst.instance.kDarkGrey,
      selectedDayPosition: SelectedDayPosition.center,
      fullCalendarScroll: FullCalendarScroll.horizontal,
    );
  }
}
