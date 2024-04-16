import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartDemo extends StatefulWidget {
  const PieChartDemo({super.key});

  @override
  State<PieChartDemo> createState() => _PieChartDemoState();
}

class _PieChartDemoState extends State<PieChartDemo> {
  Map<String, double> data = {
    "Food": 20,
    "Movies": 10,
    "Entertainment": 40,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PieChartDemo",
        ),
        backgroundColor: Colors.deepPurple.shade400,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: PieChart(
          dataMap: data,
          animationDuration: const Duration(milliseconds: 2000),
          chartType: ChartType.ring,
          chartRadius: 200,
          ringStrokeWidth: 100,
          centerText: "Total",
          chartValuesOptions: const ChartValuesOptions(
            showChartValuesInPercentage: true,
          ),
          legendOptions: const LegendOptions(
            legendPosition: LegendPosition.bottom,
            legendShape: BoxShape.rectangle,
            //showLegends: false,
          ),
        ),
      ),
    );
  }
}
