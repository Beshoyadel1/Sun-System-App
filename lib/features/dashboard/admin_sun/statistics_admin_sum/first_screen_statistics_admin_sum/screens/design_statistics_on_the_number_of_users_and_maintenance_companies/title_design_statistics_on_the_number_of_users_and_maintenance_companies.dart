import 'package:flutter/material.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../../core/theming/text_styles.dart';

class TitleDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies extends StatelessWidget {
  const TitleDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextInAppWidget(
            text:'احصائية عدد المستخدمين والشركات للصيانة',
            textSize: 13,
            fontWeightIndex: FontSelectionData.semiBoldFontFamily,
            textColor:AppColors.blackColor,
          ),
        ),
      ],
    );
  }
}
