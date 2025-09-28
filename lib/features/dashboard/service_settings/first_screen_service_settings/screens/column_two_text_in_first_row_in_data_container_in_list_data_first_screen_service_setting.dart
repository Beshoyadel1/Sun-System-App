import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class ColumnTwoTextInFirstRowInDataContainerInListDataFirstScreenServiceSetting extends StatelessWidget {
  const ColumnTwoTextInFirstRowInDataContainerInListDataFirstScreenServiceSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          TextInAppWidget(
            text:AppLanguageKeys.nissanServiceSettings,
            textSize: 16,
            fontWeightIndex: FontSelectionData.mediumFontFamily,
            textColor:AppColors.blackColor,
            maxLines: 1,
          ),
          TextInAppWidget(
            text:AppLanguageKeys.serviceSettingsDetails,
            textSize: 13,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor:AppColors.blackColor,
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
