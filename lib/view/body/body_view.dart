import 'package:flutter/material.dart';
import 'package:flutter_web_example/view/body/content/content_view.dart';
import 'package:flutter_web_example/view/body/tab_left/tab_left_view.dart';

class BuildBody extends StatefulWidget {
  BuildBody({Key? key}) : super(key: key);

  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TabLeft(),
          SizedBox(
            width: 10,
          ),
          Content(),
        ],
      ),
    );
  }
}
