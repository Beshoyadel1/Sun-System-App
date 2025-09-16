import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';

class RowIconEditOrange extends StatelessWidget {
  const RowIconEditOrange({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Image.asset(AppImageKeys.edit5),
        TextInAppWidget(
          text: AppLanguageKeys.edit,
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.orangeColor,
          decorationText: TextDecoration.underline,
          decorationTextColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
