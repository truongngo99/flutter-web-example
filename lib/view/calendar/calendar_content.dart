import 'package:flutter/material.dart';

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
  var focusedDay = DateTime.now();
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

  covertToMonth(int intDate) {
    String strDate = intDate.toString();
    DateTime dateTimedate = DateFormat("yyyy-MM-dd hh:mm:ss").parse(strDate);
    String date = DateFormat.MMMM().format(dateTimedate);
    return date;
  }

  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    var current_mon = now.month;
    // print(listMonth[current_mon - 2]);
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
                child: TableCalendar(
                  headerStyle: HeaderStyle(
                    titleCentered: true,
                    formatButtonVisible: false,
                    leftChevronIcon: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.chevron_left,
                            color: Colors.blue,
                          ),
                          Text(
                            listMonth[monthCurrent - 2],
                            style: GoogleFonts.rajdhani(),
                          )
                        ],
                      ),
                    ),
                    rightChevronIcon: Container(
                      child: Row(
                        children: [
                          Text(
                            listMonth[monthCurrent],
                            style: GoogleFonts.rajdhani(),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                    titleTextStyle: GoogleFonts.rajdhani(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: focusedDay,
                  onPageChanged: (date) {
                    setState(() {
                      monthCurrent = date.month;
                      focusedDay = date;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
