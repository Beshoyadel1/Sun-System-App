import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';

class FirstRowInsuranceOffers extends StatelessWidget {
  const FirstRowInsuranceOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.yourInsuranceData,
          textSize: 13,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.darkColor,
        ),
        Row(
          children: [
            Image.asset(AppImageKeys.file),
            SizedBox(width: 5,),
            TextInAppWidget(
              text: AppLanguageKeys.insuranceOffersOnly,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.orangeColor,
              decorationText: TextDecoration.underline,
              decorationTextColor: AppColors.orangeColor,
            ),
          ],
        )
      ],
    );
  }
}
