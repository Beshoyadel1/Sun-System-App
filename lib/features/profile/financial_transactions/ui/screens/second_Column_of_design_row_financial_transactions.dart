import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/profile/custom_widget/column_list_container_text_notifications_widget.dart';
import 'package:sun_system_app/features/profile/custom_widget/container_list_container_text_notifications_widget.dart';

class SecondColumnOfDesignRowFinancialTransactions extends StatelessWidget {
  const SecondColumnOfDesignRowFinancialTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: TextInAppWidget(
            text: AppLanguageKeys.paidBy,
            textSize: 8,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkBlueColor,
          ),
        ),
        Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              spacing: 10,
              children: [
                TextInAppWidget(
                  text: '1000',
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor: AppColors.orangeColor,
                ),
                Image.asset(AppImageKeys.coin)
              ],
            ),
            Image.asset(AppImageKeys.visa3)
          ],
        )
      ],
    );
  }
}
