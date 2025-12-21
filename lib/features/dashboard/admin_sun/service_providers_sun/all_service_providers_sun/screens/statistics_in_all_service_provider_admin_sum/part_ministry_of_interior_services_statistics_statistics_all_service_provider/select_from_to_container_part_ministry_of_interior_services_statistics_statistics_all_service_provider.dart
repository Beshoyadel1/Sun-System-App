import 'package:flutter/cupertino.dart';
import '../../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/select_time_profit_service_widget.dart';

class SelectFromToContainerPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider extends StatelessWidget {
  const SelectFromToContainerPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              TextInAppWidget(
                text:AppLanguageKeys.searchFrom,
                textSize: 13,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:AppColors.blackColor,
              ),
              SelectTimeProfitServiceWidget(
                hint: '00/00/0000',
                isTime: true,
                textSize: 11,
                backGroundColor: AppColors.whiteColor,
                textColor: AppColors.greyColor,
                borderColor:AppColors.greyColor,
                width: 250,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              TextInAppWidget(
                text:AppLanguageKeys.to,
                textSize: 13,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:AppColors.blackColor,
              ),
              SelectTimeProfitServiceWidget(
                hint: '00/00/0000',
                isTime: true,
                textSize: 11,
                backGroundColor: AppColors.whiteColor,
                textColor: AppColors.greyColor,
                borderColor:AppColors.greyColor,
                width: 250,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
