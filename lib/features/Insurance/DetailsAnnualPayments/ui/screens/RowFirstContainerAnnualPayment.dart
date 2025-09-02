import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';

class RowFirstContainerAnnualPayment extends StatelessWidget {
  const RowFirstContainerAnnualPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.annualPayment,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
        //RowFirstContainerAnnualPayment
        Row(
          children: [
            TextInAppWidget(
              text: '12000',
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkGreyColor,
            ),
            SizedBox(width: 10,),
            Image.asset(AppImageKeys.coin,width: 12,color:AppColors.darkGreyColor,)
          ],
        )
      ],
    );
  }
}
