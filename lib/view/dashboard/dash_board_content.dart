import 'package:flutter/material.dart';
import 'package:flutter_web_example/data/model/user_model.dart';
import 'package:flutter_web_example/view/dashboard/widget/refferal_widget.dart';
import 'package:flutter_web_example/view/dashboard/widget/traffic_source_widget.dart';
import 'package:flutter_web_example/view/dashboard/widget/traffic_widget.dart';
import 'package:flutter_web_example/view/home/home_view.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardContent extends StatefulWidget {
  DashBoardContent({Key? key}) : super(key: key);

  @override
  _DashBoardContentState createState() => _DashBoardContentState();
}

class _DashBoardContentState extends State<DashBoardContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width - 808,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: double.infinity,
                    width: 300,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: BuildRefferal(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width - 500,
                child: Row(
                  children: [
                    Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width * 0.22,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: BuildTraffic(),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                          height: double.infinity,
                          width: MediaQuery.of(context).size.width * 0.22,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: double.infinity,
                        width: 300,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: BuildTrafficSource(),
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
