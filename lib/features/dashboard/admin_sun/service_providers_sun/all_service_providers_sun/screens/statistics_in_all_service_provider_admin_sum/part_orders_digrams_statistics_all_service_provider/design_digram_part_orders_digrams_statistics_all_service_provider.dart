import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class DesignDigramPartOrdersDigramsStatisticsAllServiceProvider extends StatelessWidget {
  const DesignDigramPartOrdersDigramsStatisticsAllServiceProvider({super.key});

  List<OrdersChartData> get _chartData => [
    OrdersChartData(DateTime(2024, 9, 18), 35000),
    OrdersChartData(DateTime(2024, 9, 19), 32000),
    OrdersChartData(DateTime(2024, 9, 20), 40000),
    OrdersChartData(DateTime(2024, 9, 21), 32000),
    OrdersChartData(DateTime(2024, 9, 22), 50000),
    OrdersChartData(DateTime(2024, 9, 23), 45000),
    OrdersChartData(DateTime(2024, 9, 24), 50000),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: SfCartesianChart(
        plotAreaBorderWidth: 0,

        tooltipBehavior: TooltipBehavior(
          enable: true,
          header: '',
          format: 'point.x\npoint.y ريال',
          color: AppColors.whiteColor,
          elevation: 6,
          borderColor: Colors.transparent,
          textStyle: const TextStyle(
            color: AppColors.blackColor,
            fontSize: 12,
          ),
        ),

        primaryXAxis: DateTimeAxis(
          isVisible: false,
          majorGridLines: const MajorGridLines(width: 0),
        ),

        primaryYAxis: NumericAxis(
          minimum: 20000,
          maximum: 50000,
          interval: 10000,
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0),
          majorGridLines: MajorGridLines(
            width: 1,
            dashArray: const [6, 4],
            color: Colors.grey.withOpacity(0.3),
          ),
        ),

        series: <CartesianSeries<OrdersChartData, DateTime>>[
          AreaSeries<OrdersChartData, DateTime>(
            dataSource: _chartData,
            xValueMapper: (data, _) => data.date,
            yValueMapper: (data, _) => data.value,
            borderColor: AppColors.cyanColor,
            borderWidth: 2,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.cyanColor.withOpacity(0.4),
                AppColors.cyanColor.withOpacity(0.05),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
class OrdersChartData {
  final DateTime date;
  final double value;

  OrdersChartData(this.date, this.value);
}