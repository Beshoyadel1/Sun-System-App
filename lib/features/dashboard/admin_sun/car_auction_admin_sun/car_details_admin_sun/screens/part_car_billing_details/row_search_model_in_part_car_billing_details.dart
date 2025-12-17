import 'package:flutter/cupertino.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/select_time_profit_service_widget.dart';

class RowSearchModelInPartCarBillingDetails extends StatelessWidget {
  const RowSearchModelInPartCarBillingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10,
      children: [
        Row(
          spacing: 10,
          children: [
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInAppWidget(
                  text:AppLanguageKeys.searchFrom,
                  textSize: 12,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:AppColors.blackColor,
                ),
                SelectTimeProfitServiceWidget(
                  hint: '00/00/0000',
                  isTime: true,
                  backGroundColor: AppColors.whiteColor,
                  borderColor: AppColors.greyColor,
                  textColor: AppColors.blackColor44,
                ),
              ],
            ),
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInAppWidget(
                  text:AppLanguageKeys.to,
                  textSize: 12,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:AppColors.blackColor,
                ),
                SelectTimeProfitServiceWidget(
                  hint: '00/00/0000',
                  isTime: true,
                  backGroundColor: AppColors.whiteColor,
                  borderColor: AppColors.greyColor,
                  textColor: AppColors.blackColor44,
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: AppColors.darkGreyColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:Center(
            child: TextInAppWidget(
              text:AppLanguageKeys.search,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
