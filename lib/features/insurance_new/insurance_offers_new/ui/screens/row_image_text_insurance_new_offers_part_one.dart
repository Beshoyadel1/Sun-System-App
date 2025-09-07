import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/insurance_new/insurance_offers_new/ui/screens/row_image_text_insurance_new_offers_part_one.dart';

class RowImageTextInsuranceNewOffersPartOne extends StatelessWidget {
  const RowImageTextInsuranceNewOffersPartOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Image.asset(AppImageKeys.company5,width: 35,),
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text:'سايكو',
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
              maxLines: 1,
            ),
            TextInAppWidget(
              text:AppLanguageKeys.integrativeInsurance,
              textSize: 11,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.orangeColor,
              maxLines: 1,
            )
          ],
        )
      ],
    );
  }
}
