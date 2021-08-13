import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/view/body/body_view.dart';
import 'package:flutter_web_example/view/body/tab_left/tab_left_view.dart';
import 'package:flutter_web_example/view/calendar/calendar_bloc.dart';
import 'package:flutter_web_example/view/calendar/calendar_state.dart';
import 'package:flutter_web_example/view/header/header_view.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class CalendarView extends StatefulWidget {
  CalendarView({Key? key}) : super(key: key);

  @override
  _CalendarViewState createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaf2ff),
      drawer: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 230, maxWidth: 300),
        child: TabLeft(
          index: 5,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 70, vertical: 60),
        child: Column(
          children: [
            BuildHeader(),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: BuildBody(
              index: 5,
            )),
          ],
        ),
      ),
    );
  }
}
