import 'package:flutter/material.dart';
import 'package:flutter_web_example/data/model/user_model.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildRefferal extends StatefulWidget {
  BuildRefferal({Key? key}) : super(key: key);

  @override
  _BuildRefferalState createState() => _BuildRefferalState();
}

class _BuildRefferalState extends State<BuildRefferal> {
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
                'Referrals',
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
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: listUser.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 16,
                                      backgroundImage: AssetImage(
                                          listUser[index].imageUrl ?? ''),
                                    ),
                                    listUser[index].isOnline ?? false
                                        ? Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle))
                                        : Container(),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  listUser[index].name ?? '',
                                  style: GoogleFonts.rajdhani(
                                    color: Color(0xff909397),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '21K',
                            style: GoogleFonts.rajdhani(
                              color: Color(0xffc1c5c9),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffffffff).withOpacity(0.8),
                              Color(0xffffffff).withOpacity(0.8),
                              Color(0xffffffff).withOpacity(0.8),
                              Color(0xffffffff).withOpacity(0.8),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),
                      child: Container(
                        height: 23,
                        width: 23,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 1, color: Color(0xffe7ecf1))),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xffb3b8bd),
                        ),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
