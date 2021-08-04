import 'package:flutter/material.dart';
import 'package:flutter_web_example/view/home/home_view.dart';

class TraderContent extends StatefulWidget {
  TraderContent({Key? key}) : super(key: key);

  @override
  _TraderContentState createState() => _TraderContentState();
}

class _TraderContentState extends State<TraderContent> {
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
