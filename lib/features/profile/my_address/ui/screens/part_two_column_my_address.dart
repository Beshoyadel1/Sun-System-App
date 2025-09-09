import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/features/profile/custom_widget/column_list_container_text_notifications_widget.dart';
import 'package:sun_system_app/features/profile/custom_widget/container_list_container_text_notifications_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/notifications/ui/screens/list_container_text_notifications.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/language/language_constant.dart';

class PartTwoColumnMyAddress extends StatelessWidget {
  const PartTwoColumnMyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.carModel,
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextInAppWidget(
              text: 'CR  - V',
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor34,
            ),
            Image.asset(AppImageKeys.car1)
          ],
        ),

      ],
    );
  }
}
