import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../core/theming/colors.dart';

class DigramDataContainerDesignOrderSalesStatisticsAdminSum extends StatelessWidget {
  const DigramDataContainerDesignOrderSalesStatisticsAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.transparent,
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 260,
            child: RotatedBox(
              quarterTurns: 1,
              child: BarChart(
                BarChartData(
                  maxY: 100,
                  alignment: BarChartAlignment.spaceBetween,
                  barTouchData: BarTouchData(enabled: false),
                  gridData: FlGridData(
                    show: true,
                    drawHorizontalLine: true,
                    horizontalInterval: 10,
                    drawVerticalLine: false,
                    getDrawingHorizontalLine: (_) => FlLine(
                      color: AppColors.blackColor,
                      strokeWidth: 1,
                    ),
                  ),

                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        getTitlesWidget: (value, _) {
                          final i = value.toInt();
                          if (i < 0 || i >= chartData.length) {
                            return const SizedBox.shrink();
                          }
                          return RotatedBox(
                            quarterTurns: -1,
                            child: TextInAppWidget(
                              text:chartData[i].month,
                              textSize: 10,
                              fontWeightIndex: FontSelectionData.regularFontFamily,
                              textColor: AppColors.blackColor,
                            )
                          );
                        },
                      ),
                    ),
                    leftTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),

                  /// STACKED BARS
                  barGroups: List.generate(chartData.length, (index) {
                    final item = chartData[index];
                    return BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: item.orange + item.grey,
                          width: 14,
                          borderRadius: BorderRadius.circular(4),
                          rodStackItems: [
                            BarChartRodStackItem(
                              0,
                              item.orange,
                              AppColors.orangeColor,
                            ),
                            BarChartRodStackItem(
                              item.orange,
                              item.orange + item.grey,
                              AppColors.greyColor,
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(6, (index) {
              final value = index * 20;
              return Expanded(
                child: TextInAppWidget(
                  text:'\$AR${value}K',
                  textSize: 10,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: AppColors.blackColor,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}


class MonthBarData {
  final String month;
  final double orange;
  final double grey;

  MonthBarData(this.month, this.orange, this.grey);
}

final List<MonthBarData> chartData = [
  MonthBarData('Mar', 70, 30),
  MonthBarData('Apr', 45, 20),
  MonthBarData('May', 60, 30),
  MonthBarData('Jun', 55, 25),
  MonthBarData('Jul', 50, 20),
  MonthBarData('Aug', 48, 22),
  MonthBarData('Sep', 35, 18),
  MonthBarData('Oct', 40, 20),
  MonthBarData('Nov', 45, 25),
  MonthBarData('Dec', 50, 20),
];
