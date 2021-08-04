import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaleStatictisWidget extends StatefulWidget {
  SaleStatictisWidget({Key? key}) : super(key: key);

  @override
  _SaleStatictisWidgetState createState() => _SaleStatictisWidgetState();
}

class _SaleStatictisWidgetState extends State<SaleStatictisWidget> {
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
                'Sales Statistics',
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
          Expanded(child: Container())
        ],
      ),
    );
  }
}
