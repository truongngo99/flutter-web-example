import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvolvementWidget extends StatefulWidget {
  InvolvementWidget({Key? key}) : super(key: key);

  @override
  _InvolvementWidgetState createState() => _InvolvementWidgetState();
}

class _InvolvementWidgetState extends State<InvolvementWidget> {
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
                'Involvement',
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
            child: Container(),
          )
        ],
      ),
    );
  }
}
