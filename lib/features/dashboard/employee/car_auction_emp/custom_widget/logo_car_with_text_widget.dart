import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class LogoCarWithTextWidget extends StatelessWidget {
  final String? imagePath,nameLogo;
  const LogoCarWithTextWidget({
    super.key,
    this.imagePath,
    this.nameLogo
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imagePath??AppImageKeys.logo10),
        TextInAppWidget(
          text:nameLogo??'نيسان',
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.blackColor,
        ),
      ],
    );
  }
}
