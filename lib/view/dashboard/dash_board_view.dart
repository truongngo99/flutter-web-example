import 'package:flutter/material.dart';
import 'package:flutter_web_example/view/body/body_view.dart';
import 'package:flutter_web_example/view/header/header_view.dart';
import 'package:flutter_web_example/view/home/home_view.dart';

class DashBoardView extends StatefulWidget {
  DashBoardView({Key? key}) : super(key: key);

  @override
  _DashBoardViewState createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaf2ff),
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
              index: 0,
            )),
          ],
        ),
      ),
    );
  }
}
