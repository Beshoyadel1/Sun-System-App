import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class ListDataTheRequestHasBeenAcceptedDeliveryLaundry extends StatelessWidget {
  const ListDataTheRequestHasBeenAcceptedDeliveryLaundry({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 20,
        children: [
          Image.asset(AppImageKeys.done_star),
          TextInAppWidget(
            text:AppLanguageKeys.requestAccepted,
            textSize: 18,
            fontWeightIndex: FontSelectionData.mediumFontFamily,
            textColor:AppColors.darkColor,
          )
        ],
      ),
    );
  }
}
