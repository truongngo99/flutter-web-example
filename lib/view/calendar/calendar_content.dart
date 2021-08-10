import 'package:flutter/material.dart';
import 'package:flutter_web_example/main.dart';

import 'package:flutter_web_example/view/dashboard/widget/sales_statistics_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class CalendarContent extends StatefulWidget {
  CalendarContent({Key? key}) : super(key: key);

  @override
  _CalendarContentState createState() => _CalendarContentState();
}

class _CalendarContentState extends State<CalendarContent> {
  var monthCurrent = DateTime.now().month;
  CalendarController _controller = CalendarController();

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  List<String> listMonth = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Now',
    'Dec'
  ];
  List<String> listDate = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    List<Meeting> _getDataSource() {
      final List<Meeting> meetings = <Meeting>[];
      final DateTime today = DateTime.now();
      final DateTime startTime =
          DateTime(today.year, today.month, today.day, 9, 0, 0);
      final DateTime endTime = startTime.add(const Duration(hours: 2));
      meetings.add(Meeting(
          'Conference', startTime, endTime, const Color(0xFF0F8644), false));
      meetings.add(
          Meeting('Hello', startTime, endTime, const Color(0xFF0F8644), false));
      meetings.add(Meeting(
          'Ngay mai',
          DateTime(today.year, today.month, today.day - 1, 9, 0, 0),
          DateTime(today.year, today.month, today.day + 1, 9, 0, 0),
          Color(0xFF0F8644),
          false));

      return meetings;
    }

    return Container(
      height: MediaQuery.of(context).size.height - 200,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Calendar',
                    style: GoogleFonts.rajdhani(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.info_outline,
                    size: 16,
                    color: Color(0xffc9ccd0),
                  )
                ],
              ),
              Divider(),
              Expanded(
                child: SfCalendar(
                  view: CalendarView.month,
                  firstDayOfWeek: 1,
                  dataSource: MeetingDataSource(_getDataSource()),
                  cellEndPadding: 5,
                  headerStyle: CalendarHeaderStyle(
                      textAlign: TextAlign.center,
                      textStyle: GoogleFonts.rajdhani(
                          fontWeight: FontWeight.bold, fontSize: 25)),
                  showNavigationArrow: true,
                  initialDisplayDate: DateTime.now(),
                  // viewHeaderStyle: ViewHeaderStyle(
                  //     backgroundColor: Colors.white,
                  //     dayTextStyle: TextStyle(color: Colors.transparent),
                  //     dateTextStyle: TextStyle(color: Colors.transparent)),
                  monthCellBuilder:
                      (BuildContext buildContext, MonthCellDetails details) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      padding: EdgeInsets.fromLTRB(5, 1, 3, 3),
                      decoration: BoxDecoration(
                        color: Color(0xffebf2f7),

                        borderRadius: BorderRadius.circular(8),
                        // border:
                        //     Border.all(color: defaultColor, width: 0.5)
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              listDate[details.date.weekday - 1],
                              style: TextStyle(
                                color: Color(0xffd6dde2),
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              details.date.day.toString(),
                              style: TextStyle(
                                color: Color(0xff74797f),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },

                  monthViewSettings: MonthViewSettings(
                    appointmentDisplayMode:
                        MonthAppointmentDisplayMode.appointment,
                    agendaItemHeight: 50,
                    appointmentDisplayCount: 5,
                    showTrailingAndLeadingDates: true,
                  ),

                  selectionDecoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 68, 140, 255),
                        width: 2),
                    borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.rectangle,
                  ),
                  // appointmentBuilder: appointmentBuilder,
                  // showDatePickerButton: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget appointmentBuilder(BuildContext context,
      CalendarAppointmentDetails calendarAppointmentDetails) {
    final Appointment appointment =
        calendarAppointmentDetails.appointments.first;
    return Column(
      children: [
        Container(
            width: calendarAppointmentDetails.bounds.width,
            height: calendarAppointmentDetails.bounds.height / 2,
            color: appointment.color,
            child: Center(
              child: Icon(
                Icons.group,
                color: Colors.black,
              ),
            )),
        Container(
          width: calendarAppointmentDetails.bounds.width,
          height: calendarAppointmentDetails.bounds.height / 2,
          color: appointment.color,
          child: Text(
            appointment.subject +
                DateFormat(' (hh:mm a').format(appointment.startTime) +
                '-' +
                DateFormat('hh:mm a)').format(appointment.endTime),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10),
          ),
        )
      ],
    );
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
