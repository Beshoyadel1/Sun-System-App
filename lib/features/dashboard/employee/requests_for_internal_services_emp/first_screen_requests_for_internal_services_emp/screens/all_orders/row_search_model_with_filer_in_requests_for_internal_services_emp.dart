import 'package:flutter/cupertino.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/select_time_profit_service_widget.dart';

class RowSearchModelWithFilerInRequestsForInternalServicesEmp extends StatelessWidget {
  const RowSearchModelWithFilerInRequestsForInternalServicesEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Column(
              children: [
                SizedBox(height: 17,),
                Container(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 50,vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.darkGreyColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child:TextInAppWidget(
                    text:AppLanguageKeys.search,
                    textSize: 12,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor:AppColors.whiteColor,
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20,vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:Row(
            spacing: 5,
            children: [
              Image.asset(AppImageKeys.filter2),
              TextInAppWidget(
                text:AppLanguageKeys.filter,
                textSize: 15,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:AppColors.blackColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
