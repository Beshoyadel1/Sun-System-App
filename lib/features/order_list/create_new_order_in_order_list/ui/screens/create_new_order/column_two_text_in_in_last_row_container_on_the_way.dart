import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';

class ColumnTwoTextInInLastRowContainerCreateNewOrder extends StatelessWidget {
  const ColumnTwoTextInInLastRowContainerCreateNewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.expectedArrival,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        TextInAppWidget(
          text: 'بعد 20 دقيقة',
          textSize: 11,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
