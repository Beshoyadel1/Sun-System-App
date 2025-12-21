import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/theming/colors.dart';

class AreaChartDigramWidget extends StatelessWidget {
  final Color? color;
  const AreaChartDigramWidget({
    super.key,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 2),
                FlSpot(1, 3),
                FlSpot(2, 3.5),
                FlSpot(3, 2),
                FlSpot(4, 2.6),
                FlSpot(5, 2.7),
                FlSpot(6, 2.9),
                FlSpot(7, 4),
                FlSpot(8, 4.2),
                FlSpot(9, 4.5),
                FlSpot(10, 4.5),
                FlSpot(11, 5),
              ],
              isCurved: true,
              barWidth: 0,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    color != null?color!.withOpacity(0.9):AppColors.orangeColor,
                    color != null?color!.withOpacity(0.4):AppColors.orangeColor,
                    color != null?color!.withOpacity(0.1):AppColors.orangeColor,
                  ],
                ),
              ),
              color: AppColors.whiteColor,
            ),
          ],
          minY: 0,
        ),
      ),
    );
  }
}