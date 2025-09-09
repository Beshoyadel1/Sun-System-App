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

class PartOneColumnMyAddress extends StatelessWidget {
  const PartOneColumnMyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.yourCarAddress,
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        Row(
          spacing: 10,
          children: [
            ContainerListContainerTextNotificationsWidget(imagePath: AppImageKeys.map1,),
            ColumnListContainerTextNotificationsWidget(
              firstText: AppLanguageKeys.yourCarAddress,
              secondText: '20 شارع ملك فهد - الملز',
            )
          ],
        )
      ],
    );
  }
}
