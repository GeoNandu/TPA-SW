import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnalyzeData(),
    );
  }
}

class AnalyzeData extends StatelessWidget {
  const AnalyzeData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[500],
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: const Color(0xFF7C7C7C),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'images/logo.png',
                    fit: BoxFit.contain,
                    height: 55,
                  ),
                ],
              ),
            ),
            body: const MyStatefulWidget()));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  late List<SalesData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
            body: SfCartesianChart(
              title: ChartTitle(text: 'Yearly sales analysis'),
              legend: Legend(isVisible: true),
              tooltipBehavior: _tooltipBehavior,
              series: <SplineSeries>[
                SplineSeries<SalesData, double>(
                    name: 'Sales',
                    dataSource: _chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true,
                    color: Colors.red,
                    width: 4,
                    opacity: 1,
                    dashArray: <double>[5, 5],
                    splineType: SplineType.cardinal,
                    cardinalSplineTension: 0.9)
              ],
              primaryXAxis: NumericAxis(
                edgeLabelPlacement: EdgeLabelPlacement.shift,

              ),
              primaryYAxis: NumericAxis(
                  labelFormat: '{value}M',
                  numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
            )));
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(2017, 25),
      SalesData(2018, 12),
      SalesData(2019, 24),
      SalesData(2020, 18),
      SalesData(2021, 30)
    ];
    return chartData;
  }
}
class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}
