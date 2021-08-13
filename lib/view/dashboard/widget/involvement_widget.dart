import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class InvolvementWidget extends StatefulWidget {
  InvolvementWidget({Key? key}) : super(key: key);

  @override
  _InvolvementWidgetState createState() => _InvolvementWidgetState();
}

class _InvolvementWidgetState extends State<InvolvementWidget> {
  @override
  Widget build(BuildContext context) {
    List<SalesData> chartData = [
      SalesData(2010, 35),
      SalesData(2011, 28),
      SalesData(2012, 34),
      SalesData(2013, 32),
      SalesData(2014, 40)
    ];
    List<SalesData> chartData1 = [
      SalesData(2010, 20),
      SalesData(2011, 50),
      SalesData(2012, 12),
      SalesData(2013, 40),
      SalesData(2014, 45)
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Row(
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
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Divider(),
        ),
        Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '2.2628',
                style: GoogleFonts.rajdhani(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '25 April 2019',
                style: GoogleFonts.rajdhani(
                  color: Color(0xffc4c8cb),
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SfCartesianChart(
            tooltipBehavior: TooltipBehavior(
              enable: true,
              activationMode: ActivationMode.doubleTap,
              tooltipPosition: TooltipPosition.pointer,
            ),
            trackballBehavior: TrackballBehavior(
              lineType: TrackballLineType.vertical,
              activationMode: ActivationMode.singleTap,
              shouldAlwaysShow: false,
              enable: true,
            ),
            series: <ChartSeries>[
              SplineAreaSeries<SalesData, int>(
                dataSource: chartData,
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                borderColor: const Color(0xffdce9fd),
                color: Color(0xffeef4fe),
                borderWidth: 3,
              ),
              SplineAreaSeries<SalesData, int>(
                dataSource: chartData1,
                color: const Color(0xffe3edfd),
                borderColor: const Color(0xff508ff4),
                borderWidth: 3,
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
              )
            ],
            primaryXAxis: NumericAxis(isVisible: false),
            primaryYAxis: NumericAxis(isVisible: false),
          ),
        )
      ],
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final int year;
  final double sales;
}
