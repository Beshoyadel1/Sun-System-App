import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../../../core/theming/colors.dart';

class DigramDataContainerCommissionDigramDesignStatisticsAdminSum
    extends StatelessWidget {
  const DigramDataContainerCommissionDigramDesignStatisticsAdminSum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 30,
        children: [
          Expanded(
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 5,
                minY: 0,
                maxY: 120,
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),

                /// 🔹 Tooltip
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (spots) {
                      return spots.map((spot) {
                        return LineTooltipItem(
                          'SAR ${spot.y.toStringAsFixed(2)}',
                          const TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }).toList();
                    },
                  ),
                ),

                /// 🔹 Axis titles
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, _) {
                        const months = [
                          'SEP',
                          'OCT',
                          'NOV',
                          'DEC',
                          'JAN',
                          'FEB',
                        ];
                        return Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            months[value.toInt()],
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.greyColor,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                /// 🔹 Lines
                lineBarsData: [_orangeLine(), _tealLine()],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              RowNumberCoinWidget(
                numberText: '250',
                sizeText: 15,
                imageSrc: AppImageKeys.coin,
                textColor: AppColors.orangeColor,
                imageColor: AppColors.orangeColor,
              ),
              RowNumberCoinWidget(
                numberText: '250',
                sizeText: 15,
                imageSrc: AppImageKeys.coin,
                textColor: AppColors.blueColor,
                imageColor: AppColors.blueColor,
              ),
            ],
          ),
        ],
      ),
    );
  }

  LineChartBarData _orangeLine() {
    return LineChartBarData(
      isCurved: true,
      barWidth: 4,
      color: AppColors.orangeColor,
      dotData: FlDotData(
        show: true,
        getDotPainter: (spot, percent, bar, index) {
          if (index == 2) {
            return FlDotCirclePainter(
              radius: 6,
              color: AppColors.whiteColor,
              strokeWidth: 3,
              strokeColor: AppColors.orangeColor,
            );
          }
          return FlDotCirclePainter(radius: 0);
        },
      ),
      belowBarData: BarAreaData(
        show: true,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.deepOrange.withOpacity(0.25), Colors.transparent],
        ),
      ),
      spots: const [
        FlSpot(0, 60),
        FlSpot(1, 45),
        FlSpot(2, 80),
        FlSpot(3, 40),
        FlSpot(4, 85),
        FlSpot(5, 75),
      ],
    );
  }

  LineChartBarData _tealLine() {
    return LineChartBarData(
      isCurved: true,
      barWidth: 4,
      color: AppColors.cyanColor,
      dotData: FlDotData(show: false),
      spots: const [
        FlSpot(0, 35),
        FlSpot(1, 20),
        FlSpot(2, 40),
        FlSpot(3, 25),
        FlSpot(4, 38),
        FlSpot(5, 45),
      ],
    );
  }
}
