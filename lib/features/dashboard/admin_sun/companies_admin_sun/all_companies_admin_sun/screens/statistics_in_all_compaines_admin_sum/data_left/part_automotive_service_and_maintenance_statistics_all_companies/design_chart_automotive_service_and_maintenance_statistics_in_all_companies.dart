import 'dart:math';
import 'package:flutter/material.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../../core/theming/text_styles.dart';

class DesignChartAutomotiveServiceAndMaintenanceStatisticsInAllCompanies extends StatelessWidget {
  const DesignChartAutomotiveServiceAndMaintenanceStatisticsInAllCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 220,
      child: CustomPaint(
        painter: CircularSegmentPainter(),
        child: const Center(
          child: Column(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextInAppWidget(
                text: '\$ 200.00',
                textSize: 18,
                fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                textColor:AppColors.orangeColor,
              ),
              TextInAppWidget(
                text: 'إجمالي الفواتير',
                textSize: 18,
                fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                textColor:AppColors.blackColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularSegmentPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 12;

    const strokeWidth = 18.0;
    const gap = 0.25;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final segments = [
      _Segment(0.25,AppColors.orangeColor),
      _Segment(0.25, AppColors.cyanColor),
      _Segment(0.25, AppColors.darkBrownColor),
      _Segment(0.25, AppColors.blueColor),
    ];

    double startAngle = -pi / 2;

    for (final segment in segments) {
      final sweepAngle = (2 * pi * segment.value) - gap;
      paint.color = segment.color;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint,
      );

      startAngle += sweepAngle + gap;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class _Segment {
  final double value;
  final Color color;

  _Segment(this.value, this.color);
}
