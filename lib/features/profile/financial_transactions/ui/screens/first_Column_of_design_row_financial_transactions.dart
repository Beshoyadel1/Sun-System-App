import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/profile/custom_widget/column_list_container_text_notifications_widget.dart';
import 'package:sun_system_app/features/profile/custom_widget/container_list_container_text_notifications_widget.dart';

class FirstColumnOfDesignRowFinancialTransactions extends StatelessWidget {
  final String imagePath,firstText,secondText;
   FirstColumnOfDesignRowFinancialTransactions({super.key,
     required this.imagePath,
     required this.firstText,
     required this.secondText
   });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text: '1/1/2025',
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
        Row(
          spacing: 10,
          children: [
            ContainerListContainerTextNotificationsWidget(imagePath:imagePath),
            ColumnListContainerTextNotificationsWidget(
              isFinancialTransactions: true,
                firstText:firstText,
                secondText:secondText
            )
          ],
        )
      ],
    );
  }
}
