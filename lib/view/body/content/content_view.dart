import 'dart:html';

import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  Content({Key? key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: 8),
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
                      )),
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
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
