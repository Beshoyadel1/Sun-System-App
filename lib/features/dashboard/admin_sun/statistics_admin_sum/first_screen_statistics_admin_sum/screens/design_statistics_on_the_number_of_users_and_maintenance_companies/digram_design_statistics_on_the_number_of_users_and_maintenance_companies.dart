import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../../../../../../core/theming/colors.dart';

class DigramDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies extends StatelessWidget {
  const DigramDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,
      child: SfCircularChart(
        margin: EdgeInsets.zero,
        series: <PieSeries<_ChartData, String>>[
          PieSeries<_ChartData, String>(
            dataSource: [
              _ChartData('Left', 40, AppColors.cyanColor),
              _ChartData('Right', 60, AppColors.orangeColor),
            ],
            xValueMapper: (data, _) => data.label,
            yValueMapper: (data, _) => data.value,
            pointColorMapper: (data, _) => data.color,
            startAngle: 270, // rotate to match image
            endAngle: 630,
            dataLabelSettings: const DataLabelSettings(
              isVisible: false,
            ),
          ),
        ],
      ),
    );
  }
}

class _ChartData {
  final String label;
  final double value;
  final Color color;

  _ChartData(this.label, this.value, this.color);
}
