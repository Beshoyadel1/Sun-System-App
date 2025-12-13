import 'package:flutter/material.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class TitleWithSubTitle extends StatelessWidget {
  final String? title,subTitle;
  final Color? titleColor,subTitleColor;
  final double? textSizeTitle,textSizeSubTitle;
  TitleWithSubTitle({
    this.title,
    this.subTitle,
    this.subTitleColor,
    this.titleColor,
    this.textSizeSubTitle,
    this.textSizeTitle
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text:title??AppLanguageKeys.employeesLogin,
          textSize: textSizeTitle??18,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:titleColor??AppColors.blackColor,
        ),
        TextInAppWidget(
          text:subTitle??AppLanguageKeys.enterPhoneAndPassword,
          textSize: textSizeSubTitle??17,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:subTitleColor??AppColors.blackColor,
        ),
      ],
    );
  }
}
