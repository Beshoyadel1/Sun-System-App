import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';

class RowImageLabelButtonMoneyDetailsAnnualPayments extends StatelessWidget {
  const RowImageLabelButtonMoneyDetailsAnnualPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      padding: EdgeInsetsGeometry.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(AppImageKeys.company3),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInAppWidget(
                          text:AppLanguageKeys.scienceInsurance,
                          textSize: 14,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          textColor:AppColors.darkColor,
                        ),
                        TextInAppWidget(
                          text:AppLanguageKeys.comprehensiveInsurance,
                          textSize: 14,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          textColor:AppColors.orangeColor,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsetsGeometry.symmetric(vertical: 10,horizontal: 15),
                //  margin: EdgeInsetsGeometry.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color:AppColors.orangeColor,
                      width: 1,
                    ),
                  ),
                  child: TextInAppWidget(
                    text: AppLanguageKeys.policyData,
                    textSize: 12,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: AppColors.orangeColor,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextInAppWidget(
                    text: '12000',
                    textSize: 15,
                    fontWeightIndex: FontSelectionData.mediumFontFamily,
                    textColor: AppColors.orangeColor,
                  ),
                  const SizedBox(width: 5),
                  Image.asset(AppImageKeys.coin, width: 15),
                ],
              ),
              const SizedBox(height: 10),
              TextInAppWidget(
                text: AppLanguageKeys.annualPayment,
                textSize: 12,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.greyColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
