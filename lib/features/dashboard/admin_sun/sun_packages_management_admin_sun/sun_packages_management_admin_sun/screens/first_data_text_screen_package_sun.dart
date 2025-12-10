import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class FirstDataTextScreenPackageSun extends StatelessWidget {
  const FirstDataTextScreenPackageSun({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text:'باقات ',
          textSize: 18,
          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
          textColor:AppColors.blackColor,
        ),
        TextInAppWidget(
          text:'يمكنك لدخول التفاصيل لكل منشأة ',
          textSize: 17,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.blackColor,
        ),
        Image.asset(AppImageKeys.control_package_sun)
      ],
    );
  }
}
