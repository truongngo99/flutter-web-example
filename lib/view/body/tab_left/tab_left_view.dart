import 'package:flutter/material.dart';

import 'package:flutter_web_example/data/list_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TabLeft extends StatefulWidget {
  final int? index;
  TabLeft({Key? key, this.index = 0}) : super(key: key);

  @override
  _TabLeftState createState() => _TabLeftState();
}

class _TabLeftState extends State<TabLeft> {
  ListSlider slider = ListSlider();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      width: 500,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: double.infinity,
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/images/avatar.jpg',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: 30,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 210,
                            child: Text('Miroslav Minev',
                                style: GoogleFonts.rajdhani(
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 50,
                      alignment: Alignment.center,
                      child: Text(
                        '\$ 52',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rajdhani(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: slider.data.length,
                      itemBuilder: (context, index) {
                        return widget.index == index
                            ? Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffeaf2ff),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    slider.data[index]['icon'],
                                    color: Colors.blue,
                                  ),
                                  title: Text(
                                    slider.data[index]['name'],
                                    style: GoogleFonts.rajdhani(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, slider.data[index]['route']);
                                  },
                                ),
                              )
                            : ListTile(
                                leading: Icon(
                                  slider.data[index]['icon'],
                                  color: Color(0xffd4dee7),
                                ),
                                title: Text(
                                  slider.data[index]['name'],
                                  style: GoogleFonts.rajdhani(
                                      fontWeight: FontWeight.w500),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, slider.data[index]['route']);
                                },
                                trailing: slider.data[index]['name'] ==
                                        'Messages'
                                    ? Container(
                                        height: 20,
                                        width: 20,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black),
                                        child: Text(
                                          '6',
                                          style: TextStyle(color: Colors.white),
                                        ))
                                    : null,
                              );
                      })),
              Divider(
                height: 20,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  color: Color(0xffd4dee7),
                ),
                title: Text(
                  'Logout',
                  style: GoogleFonts.rajdhani(fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ListView(
//                   children: [
//                     ListTile(
//                       leading: Icon(
//                         Icons.dashboard,
//                         color: Color(0xffd4dee7),
//                       ),
//                       title: Text(
//                         'Dashboard',
//                         style:
//                             GoogleFonts.rajdhani(fontWeight: FontWeight.w500),
//                       ),
//                       onTap: () {
//                         Navigator.pushNamed(context, 'dashboard');
//                       },
//                     ),
//                     ListTile(
//                       leading: Icon(
//                         Icons.tune,
//                         color: Color(0xffd4dee7),
//                       ),
//                       title: Text(
//                         'Tradeview',
//                         style:
//                             GoogleFonts.rajdhani(fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Icon(
//                         FontAwesomeIcons.inbox,
//                         color: Color(0xffd4dee7),
//                       ),
//                       title: Text(
//                         'File manager',
//                         style:
//                             GoogleFonts.rajdhani(fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Icon(
//                         FontAwesomeIcons.chartPie,
//                         color: Color(0xffd4dee7),
//                       ),
//                       title: Text(
//                         'Traffic analyzer',
//                         style:
//                             GoogleFonts.rajdhani(fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Icon(
//                         FontAwesomeIcons.users,
//                         color: Color(0xffd4dee7),
//                       ),
//                       title: Text(
//                         'User manager',
//                         style:
//                             GoogleFonts.rajdhani(fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Icon(
//                         FontAwesomeIcons.calendarAlt,
//                         color: Color(0xffd4dee7),
//                       ),
//                       title: Text(
//                         'Calendar',
//                         style:
//                             GoogleFonts.rajdhani(fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Icon(
//                         FontAwesomeIcons.comments,
//                         color: Color(0xffd4dee7),
//                       ),
//                       title: Text(
//                         'Messages',
//                         style:
//                             GoogleFonts.rajdhani(fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Icon(
//                         Icons.payment,
//                         color: Color(0xffd4dee7),
//                       ),
//                       title: Text(
//                         'Payments',
//                         style:
//                             GoogleFonts.rajdhani(fontWeight: FontWeight.w500),
//                       ),
//                     )
//                   ],
//                 ),