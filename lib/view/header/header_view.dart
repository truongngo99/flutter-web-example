import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildHeader extends StatefulWidget {
  BuildHeader({Key? key}) : super(key: key);

  @override
  _BuildHeaderState createState() => _BuildHeaderState();
}

class _BuildHeaderState extends State<BuildHeader> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.05,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height * 0.048,
            width: width * 0.05,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xff508ff4),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Text(
              'Miro',
              textAlign: TextAlign.center,
              style: GoogleFonts.rajdhani(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffffffff),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Color(0xffd4dde7),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffffffff),
                  ),
                  child: Stack(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none,
                          color: Colors.black,
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 11,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffffffff),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_outline,
                        color: Color(0xffd4dde7),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
