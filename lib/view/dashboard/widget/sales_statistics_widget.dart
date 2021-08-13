import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SaleStatictisWidget extends StatefulWidget {
  SaleStatictisWidget({Key? key}) : super(key: key);

  @override
  _SaleStatictisWidgetState createState() => _SaleStatictisWidgetState();
}

class _SaleStatictisWidgetState extends State<SaleStatictisWidget> {
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
          Divider(
            thickness: 1,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 30,
                  width: 70,
                  margin: EdgeInsets.only(right: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff52575d),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'All Time',
                    style: GoogleFonts.rajdhani(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 70,
                  margin: EdgeInsets.only(right: 20),
                  alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //   color: Color(0xff52575d),
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                  child: Text(
                    'This year',
                    style: GoogleFonts.rajdhani(
                      color: Color(0xffc5c8cc),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 70,
                  margin: EdgeInsets.only(right: 20),
                  alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //   color: Color(0xff52575d),
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                  child: Text(
                    'This week',
                    style: GoogleFonts.rajdhani(
                      color: Color(0xffc5c8cc),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 70,
                  margin: EdgeInsets.only(right: 20),
                  alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //   color: Color(0xff52575d),
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                  child: Text(
                    'Today',
                    style: GoogleFonts.rajdhani(
                      color: Color(0xffc5c8cc),
                    ),
                  ),
                ),
              ),
            ],
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
                SplineSeries<SalesData, int>(
                  dataSource: chartData,
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  width: 4,
                  color: Colors.blue,
                ),
                SplineSeries<SalesData, int>(
                  dataSource: chartData1,
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  width: 4,
                  color: Colors.green,
                )
              ],
              primaryYAxis: NumericAxis(
                  numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
              primaryXAxis: NumericAxis(
                isVisible: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final int year;
  final double sales;
}
