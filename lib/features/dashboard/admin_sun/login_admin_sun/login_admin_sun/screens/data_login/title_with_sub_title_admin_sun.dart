import 'package:flutter/material.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class TitleWithSubTitleAdminSun extends StatelessWidget {
  const TitleWithSubTitleAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.employeesLogin,
          textSize: 18,
          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
          textColor:AppColors.blackColor,
        ),
        TextInAppWidget(
          text:AppLanguageKeys.enterPhoneAndPassword,
          textSize: 17,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.blackColor,
        ),
      ],
    );
  }
}
