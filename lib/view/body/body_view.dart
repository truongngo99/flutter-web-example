import 'package:flutter/material.dart';
import 'package:flutter_web_example/data/list_content.dart';
import 'package:flutter_web_example/view/body/content/content_view.dart';
import 'package:flutter_web_example/view/body/tab_left/tab_left_view.dart';

class BuildBody extends StatefulWidget {
  final int? index;

  BuildBody({Key? key, this.index}) : super(key: key);

  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: _size.width > 948 ? 2 : 4,
              child: TabLeft(
                index: widget.index,
              )),
          SizedBox(
            width: 10,
          ),
          Expanded(
              flex: _size.width > 948 ? 6 : 10,
              child: listWidget.elementAt(widget.index ?? 0)),
        ],
      ),
    );
  }
}
