import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class UserGraph extends StatefulWidget {
  const UserGraph({super.key});

  @override
  State<UserGraph> createState() => _UserGraphState();
}

class _UserGraphState extends State<UserGraph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color(0xFFF4F0F1),
      appBar: AppBar(
        title: Text('Jade\'s Glucose Level Chart'),
        centerTitle: true,
        backgroundColor: Color(0xFF72A56C),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SfCartesianChart(
          primaryXAxis: NumericAxis(
              title: AxisTitle(text: 'Time in Hours'), minimum: 0, maximum: 24),
          primaryYAxis: NumericAxis(
              title: AxisTitle(text: 'Glucose Levels'),
              minimum: 0,
              maximum: 250),
          series: <LineSeries<ChartData, double>>[
            LineSeries<ChartData, double>(
              dataSource: [
                ChartData(0, 120),
                ChartData(3, 140),
                ChartData(6, 100),
                ChartData(9, 180),
                ChartData(12, 90),
                ChartData(15, 160),
                ChartData(18, 200),
                ChartData(21, 130),
                ChartData(24, 150),
              ],
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              color: Color(0xFF79B21B),
              markerSettings: MarkerSettings(isVisible: false),
              dataLabelSettings: DataLabelSettings(isVisible: false),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final double x;
  final double y;
}
