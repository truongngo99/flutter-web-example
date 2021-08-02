import 'package:flutter/material.dart';
import 'package:flutter_web_example/view/body/body_view.dart';
import 'package:flutter_web_example/view/header/header_view.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            Expanded(child: BuildBody()),
          ],
        ),
      ),
    );
  }
}
