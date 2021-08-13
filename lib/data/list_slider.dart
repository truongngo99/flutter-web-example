import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListSlider {
  List<Map<String, dynamic>> data = [
    {'icon': Icons.dashboard, 'name': 'Dashboard', 'route': 'dashboard'},
    {'icon': Icons.tune, 'name': 'Tradeview', 'route': 'tradeview'},
    {
      'icon': FontAwesomeIcons.inbox,
      'name': 'File manager',
      'route': 'calendar'
    },
    {
      'icon': FontAwesomeIcons.chartPie,
      'name': 'Traffic analyzer',
      'route': 'tradeview'
    },
    {
      'icon': FontAwesomeIcons.users,
      'name': 'User manager',
      'route': 'tradeview'
    },
    {
      'icon': FontAwesomeIcons.calendarAlt,
      'name': 'Calendar',
      'route': 'calendar'
    },
    {
      'icon': FontAwesomeIcons.comments,
      'name': 'Messages',
      'route': 'tradeview'
    },
    {'icon': Icons.payment, 'name': 'Payments', 'route': 'tradeview'},
  ];
}
