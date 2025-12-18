import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../../core/theming/text_styles.dart';

class DesignChartFuelConsumptionAllCompanies extends StatelessWidget {
  final double percentage; // 0 → 100

  const DesignChartFuelConsumptionAllCompanies({
    super.key,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    const double maxArc = 75; // percentage of 360°
    final double filled = (percentage / 100) * maxArc;
    final double remaining = maxArc - filled;
    final double gap = 100 - maxArc; // bottom opening

    return SizedBox(
      width: 180,
      height: 180,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: 135,
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              sections: [
                PieChartSectionData(
                  value: filled,
                  color: AppColors.orangeColor,
                  radius: 20,
                  showTitle: false,
                ),
                PieChartSectionData(
                  value: remaining,
                  color: AppColors.greyColor,
                  radius: 20,
                  showTitle: false,
                ),
                //  Bottom gap
                PieChartSectionData(
                  value: gap,
                  color: Colors.transparent,
                  radius: 20,
                  showTitle: false,
                ),
              ],
            ),
          ),
          // Percentage text
          TextInAppWidget(
            text:'${percentage.toInt()}%',
            textSize: 30,
            fontWeightIndex: FontSelectionData.semiBoldFontFamily,
            textColor:AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}
