import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/insurance_new/insurance_offers_new/ui/screens/row_image_text_insurance_new_offers_part_one.dart';

class RowImageTextInsuranceNewOffersPartTwo extends StatelessWidget {
  const RowImageTextInsuranceNewOffersPartTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          spacing: 5,
          children: [
            TextInAppWidget(
              text:AppLanguageKeys.carModel,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
              maxLines: 1,
            ),
            Icon(Icons.edit,color:AppColors.orangeColor,size: 11,),
            TextInAppWidget(
              text:AppLanguageKeys.edit,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.orangeColor,
              maxLines: 1,
              decorationText: TextDecoration.underline,
              decorationTextColor: AppColors.orangeColor,
            ),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            TextInAppWidget(
              text:'CR  - V',
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
              maxLines: 1,
            ),
            Image.asset(AppImageKeys.car1,width: 70)
          ],
        )
      ],
    );
  }
}
