import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BuildTrafficSource extends StatefulWidget {
  BuildTrafficSource({Key? key}) : super(key: key);

  @override
  _BuildTrafficSourceState createState() => _BuildTrafficSourceState();
}

class _BuildTrafficSourceState extends State<BuildTrafficSource> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25, Color.fromRGBO(9, 0, 136, 1)),
      ChartData('Steve', 38, Color.fromRGBO(147, 0, 119, 1)),
      ChartData('Jack', 34, Color.fromRGBO(228, 0, 124, 1)),
      ChartData('Others', 52, Color.fromRGBO(255, 189, 57, 1))
    ];
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
            child: SfCircularChart(
              annotations: <CircularChartAnnotation>[
                CircularChartAnnotation(
                    widget: Container(
                        child: PhysicalModel(
                            child: Container(),
                            shape: BoxShape.circle,
                            elevation: 10,
                            shadowColor: Colors.black,
                            color: const Color.fromRGBO(230, 230, 230, 1)))),
                CircularChartAnnotation(
                    widget: Container(
                        height: 155,
                        width: 155,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Color(0xffebf2f7),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '62%',
                              style: GoogleFonts.rajdhani(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'Total Money Spend',
                              style: GoogleFonts.rajdhani(
                                color: Colors.grey,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        )))
              ],
              series: <CircularSeries>[
                DoughnutSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    pointColorMapper: (ChartData data, _) => data.color,
                    radius: '100',
                    // startAngle: 4,
                    // endAngle: 2,
                    strokeColor: Colors.white,
                    strokeWidth: 1.5,
                    explodeOffset: '3%',

                    // strokeWidth: 10,
                    innerRadius: '85')
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
