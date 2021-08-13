import 'package:flutter/material.dart';
import 'package:flutter_web_example/data/model/meeting_model.dart';
import 'package:flutter_web_example/main.dart';
import 'package:flutter_web_example/ultis.dart';
import 'package:flutter_web_example/view/calendar/calendar_picker.dart';
import 'package:flutter_web_example/view/calendar/meeting_datasource.dart';

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
  TextEditingController _titleController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _decriptionController = TextEditingController();
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
  List<Meeting> meetings = <Meeting>[];
  DateTime? fromDate;
  DateTime? toDate;

  setDate() {
    setState(() {
      _dataSource = _getCalendarDataSource();
    });
  }

  @override
  void initState() {
    _dataSource = _getCalendarDataSource();

    fromDate = DateTime.now();
    print(fromDate);
    toDate = DateTime.now().add(Duration(hours: 2));
    super.initState();
  }

  var _dataSource;
  MeetingDataSource _getCalendarDataSource() {
    // meetings.add(Meeting('Meeting', DateTime(2021, 08, 12),
    //     DateTime(2021, 08, 13), Colors.blue, false));
    return MeetingDataSource(meetings);
  }

  bool _openSchedule = false;
  @override
  Widget build(BuildContext context) {
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
                  controller: _controller,
                  dataSource: _dataSource,
                  cellEndPadding: 5,
                  headerStyle: CalendarHeaderStyle(
                      textAlign: TextAlign.center,
                      textStyle: GoogleFonts.rajdhani(
                          fontWeight: FontWeight.bold, fontSize: 25)),
                  showNavigationArrow: true,
                  initialDisplayDate: DateTime.now(),

                  monthCellBuilder:
                      (BuildContext buildContext, MonthCellDetails details) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      padding: EdgeInsets.fromLTRB(5, 1, 3, 3),
                      decoration: BoxDecoration(
                        color: Color(0xffebf2f7),
                        borderRadius: BorderRadius.circular(8),
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
                                fontSize: 13,
                                color: Color(0xff74797f),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  onLongPress: (_) async {
                    var data = await showDialog<Meeting>(
                      context: context,

                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return CalendarPicker();
                      },
                    );
                    meetings.add(data!);
                    setState(() {
                      _dataSource = _getCalendarDataSource();
                    });
                  },
                  onTap: (_) {
                    setState(() {
                      _openSchedule = true;
                    });
                  },
                  scheduleViewSettings: ScheduleViewSettings(
                      appointmentItemHeight: 60,
                      weekHeaderSettings: WeekHeaderSettings(
                        height: 40,
                        textAlign: TextAlign.center,
                      )),

                  monthViewSettings: MonthViewSettings(
                      appointmentDisplayMode:
                          MonthAppointmentDisplayMode.appointment,
                      agendaItemHeight: 50,
                      appointmentDisplayCount: 5,
                      showAgenda: _openSchedule,
                      monthCellStyle: MonthCellStyle()
                      //showTrailingAndLeadingDates: true,
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
}
