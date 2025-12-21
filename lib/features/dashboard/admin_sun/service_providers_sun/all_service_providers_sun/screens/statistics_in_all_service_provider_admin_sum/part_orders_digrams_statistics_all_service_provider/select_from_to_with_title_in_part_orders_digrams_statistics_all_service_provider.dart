import 'package:flutter/cupertino.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/select_time_profit_service_widget.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class SelectFromToWithTitleInPartOrdersDigramsStatisticsAllServiceProvider extends StatelessWidget {
  const SelectFromToWithTitleInPartOrdersDigramsStatisticsAllServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: 'الطلبات',
          textSize: 15,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor,
        ),
        Row(
          spacing: 5,
          children: [
            Column(
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
                  width: 150,
                ),
              ],
            ),
            Column(
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
                  width: 150,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
