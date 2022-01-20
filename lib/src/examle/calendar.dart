import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.month,
        firstDayOfWeek: 6,
        
      ),
    );
  }

  List<Appointment> getAppointments() {
    List<Appointment> meetings = <Appointment>[];
    final DateTime today = DateTime.now();
    final DateTime startTime = DateTime(today.year, today.month, 9, 0, 0);
    final DateTime endTime = startTime.add(Duration(hours: 2));

    meetings.add(Appointment(startTime: startTime, endTime: endTime, subject: "Conference",
    color: Colors.blue,
      recurrenceRule: 'FREQ=DAILY;COUNT=10'

    ));
    return meetings;
  }
}
