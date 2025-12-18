import 'package:flutter/material.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../../core/theming/text_styles.dart';

class TitleContainerAutomotiveServiceAndMaintenanceStatisticsInAllCompanies extends StatelessWidget {
  const TitleContainerAutomotiveServiceAndMaintenanceStatisticsInAllCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextInAppWidget(
            text:'إحصائية خدمات وصيانة السيارات ',
            textSize: 18,
            fontWeightIndex: FontSelectionData.semiBoldFontFamily,
            textColor:AppColors.blackColor,
          ),
        ),
      ],
    );
  }
}
