import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildTraffic extends StatefulWidget {
  BuildTraffic({Key? key}) : super(key: key);

  @override
  _BuildTrafficState createState() => _BuildTrafficState();
}

class _BuildTrafficState extends State<BuildTraffic> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Traffic',
                style: GoogleFonts.rajdhani(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.info_outline,
                size: 16,
                color: Color(0xffc9ccd0),
              )
            ],
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  '813',
                                  style: GoogleFonts.rajdhani(
                                    color: Color(0xff565b61),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Linkedln',
                                  style: GoogleFonts.rajdhani(
                                    color: Color(0xffc4c8cb),
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '64 %',
                            style: GoogleFonts.rajdhani(
                              color: Color(0xff565b61),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: 64 / 100,
                          color: Color(0xff5289c9),
                          backgroundColor: Color(0xffedf3fa),
                          minHeight: 6,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  '323',
                                  style: GoogleFonts.rajdhani(
                                    color: Color(0xff565b61),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Behance',
                                  style: GoogleFonts.rajdhani(
                                    color: Color(0xffc4c8cb),
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '74 %',
                            style: GoogleFonts.rajdhani(
                              color: Color(0xff565b61),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: 74 / 100,
                          color: Color(0xff2862ff),
                          backgroundColor: Color(0xffe9efff),
                          minHeight: 6,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  '927',
                                  style: GoogleFonts.rajdhani(
                                    color: Color(0xff565b61),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Instagram',
                                  style: GoogleFonts.rajdhani(
                                    color: Color(0xffc4c8cb),
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '64%',
                            style: GoogleFonts.rajdhani(
                              color: Color(0xff565b61),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: 80 / 100,
                          color: Color(0xffff6a81),
                          backgroundColor: Color(0xfffff0f2),
                          minHeight: 6,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  '717',
                                  style: GoogleFonts.rajdhani(
                                    color: Color(0xff565b61),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Dribbble',
                                  style: GoogleFonts.rajdhani(
                                    color: Color(0xffc4c8cb),
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '88 %',
                            style: GoogleFonts.rajdhani(
                              color: Color(0xff565b61),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: 88 / 100,
                          color: Color(0xffeb4a8a),
                          backgroundColor: Color(0xfffdecf3),
                          minHeight: 6,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
