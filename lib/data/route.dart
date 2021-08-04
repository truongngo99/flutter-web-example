import 'package:flutter/cupertino.dart';
import 'package:flutter_web_example/view/calendar/calendar_view.dart';

import 'package:flutter_web_example/view/dashboard/dash_board_view.dart';
import 'package:flutter_web_example/view/home/home_view.dart';
import 'package:flutter_web_example/view/trader/trader_view.dart';

class Routes {
  Map<String, Widget Function(BuildContext contex)> route = {
    '/': (context) => HomeView(),
    'dashboard': (context) => DashBoardView(),
    'tradeview': (context) => TraderView(),
    'calendar': (context) => CalendarView(),
  };
}
