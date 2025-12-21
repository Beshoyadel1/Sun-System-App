import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../../../../../../core/theming/colors.dart';

class DesignChartPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider extends StatelessWidget {
  const DesignChartPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: SfCircularChart(
        margin: EdgeInsets.zero,
        series: <CircularSeries>[
          DoughnutSeries<ChartData, String>(
            dataSource: [
              ChartData('Part 1', 70, AppColors.orangeColor),
              ChartData('Part 3', 20,AppColors.cyanColor),
              ChartData('Part 2', 10,  AppColors.blackColor44),
            ],
            pointColorMapper: (ChartData data, _) => data.color,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            dataLabelSettings: const DataLabelSettings(isVisible: false),
            innerRadius: '70%',
            strokeColor: AppColors.whiteColor,
            strokeWidth: 1,
          ),
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
