import 'package:flutter/material.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class TitleContainerPartFuelConsumptionRate extends StatelessWidget {
  const TitleContainerPartFuelConsumptionRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextInAppWidget(
            text:'معدل استهلاك الوقود',
            textSize: 18,
            fontWeightIndex: FontSelectionData.semiBoldFontFamily,
            textColor:AppColors.blackColor,
          ),
        ),
      ],
    );
  }
}
