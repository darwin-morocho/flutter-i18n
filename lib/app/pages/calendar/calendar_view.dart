import 'package:flutter/material.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CalendarDatePicker(
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2050),
        onDateChanged: (_) {},
      ),
    );
  }
}
