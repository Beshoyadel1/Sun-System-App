import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class FirstPartInSoldCarAdminSum extends StatelessWidget {
  const FirstPartInSoldCarAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.carSold,
          textSize: 20,
          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
          textColor:AppColors.blackColor,
        ),
        ImageWithTwoText(
          imageSrc: AppImageKeys.test_car80,
          title: '20250',
          subTitle: 'Purch 2005',
          titleColor: AppColors.orangeColor,
          subTitleColor: AppColors.blackColor,
        ),
      ],
    );
  }
}
