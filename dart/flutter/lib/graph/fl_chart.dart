// https://github.com/imaNNeoFighT/fl_chart
// https://github.com/imaNNeoFighT/fl_chart/blob/master/repo_files/documentations/line_chart.md

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyAppState());
  }
}
class MyAppState extends StatefulWidget {
  const MyAppState({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter app'),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
          height: MediaQuery.of(context).size.height * 0.90,
          child: LineChart(
            lineChartData,
            swapAnimationDuration: const Duration(milliseconds: 250),
          ),
        ),
      ),
    );
  }
  
  SideTitles get leftTitles => SideTitles(
        showTitles: true,
        margin: 8,
        interval: 1,
        reservedSize: 20,
        getTextStyles: (context, value) => const TextStyle(
          color: Color(0xff75729e),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 1,
        margin: 5,
        interval: 1,
        getTextStyles: (context, value) => const TextStyle(
          color: Color(0xff72719b),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        getTitles: (value) {
          return value.toString();
        },
      );

  LineChartBarData get lineChartBarData => 
    LineChartBarData(
      isCurved: false,
      colors: const [Color(0x99aa4cfc)],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: true),
      belowBarData: BarAreaData(
        show: true,
        colors: [
          const Color(0x33aa4cfc),
        ],
      ),
      spots: [
            FlSpot(1, 1),
            FlSpot(3, 4),
            FlSpot(5, 1.8),
            FlSpot(7, 5),
            FlSpot(10, 2),
            FlSpot(12, 2.2),
            FlSpot(13, 1.8),
      ],
  );

  LineChartData get lineChartData => LineChartData(
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey,
          tooltipRoundedRadius: 8,
        ),
      ),
      gridData: FlGridData(show: true),
      titlesData: FlTitlesData(
        leftTitles: leftTitles,
        bottomTitles: bottomTitles,
        rightTitles: SideTitles(showTitles: true, margin: 5, reservedSize: 6, getTitles: (value) => ''),
        topTitles: SideTitles(showTitles: false),
      ),
      lineBarsData: [lineChartBarData],
      minX: 0,
      maxX: 14,
      maxY: 7,
      minY: 0,
    );
}
