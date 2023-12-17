import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const KirguApp());
}

class KirguApp extends StatelessWidget {
  const KirguApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [_EventsCalendar(), _DayEventsList()],
        ),
      ),
    );
  }
}

class _EventsCalendar extends StatelessWidget {
  const _EventsCalendar();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
    );
  }
}

class _DayEventsList extends StatelessWidget {
  const _DayEventsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [Text("Event 1 text")],
        ),
        Row(
          children: [Text("Event 2 text")],
        )
      ],
    );
  }
}
