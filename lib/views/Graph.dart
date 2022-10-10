//ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/char.dart';
import '../static/static.dart';
import '../views/Drawer.dart';

// ignore: must_be_immutable
class Graph extends StatelessWidget {
  final List<Char> data;
  int i;

  Graph({Key? key, required this.data, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: direction ? TextDirection.ltr : TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("ChaChars"),
            foregroundColor: Theme.of(context).unselectedWidgetColor,
            titleTextStyle: GoogleFonts.crimsonPro(
              fontSize: 23,
              color: Theme.of(context).unselectedWidgetColor,
            ),
          ),
          drawer: const MyDrawer(),
          body: SfCartesianChart(
            primaryXAxis: CategoryAxis(
              interval: 1,
              labelStyle: TextStyle(
                color: Theme.of(context).appBarTheme.backgroundColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            series: <ChartSeries>[
              ColumnSeries<Char, String>(
                dataSource: data,
                xValueMapper: (Char series, _) => series.getName,
                yValueMapper: (Char series, _) => i == 0
                    ? box.read("rateTrain${series.getName}")
                    : box.read("rateTest${series.getName}"),
                color: Theme.of(context).appBarTheme.backgroundColor,
              ),
            ],
            primaryYAxis: NumericAxis(
              maximum: 10,
              axisLine: AxisLine(width: 1),
              minimum: 0,
              labelStyle: TextStyle(
                color: Theme.of(context).appBarTheme.backgroundColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ));
  }
}
