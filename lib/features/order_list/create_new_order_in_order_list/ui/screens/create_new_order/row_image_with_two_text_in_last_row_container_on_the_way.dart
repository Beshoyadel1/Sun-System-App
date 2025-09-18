import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/change_car/custom_widget/image_with_two_text.dart';


class RowImageWithTwoTextInLastRowContainerCreateNewOrder extends StatelessWidget {
  const RowImageWithTwoTextInLastRowContainerCreateNewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImageKeys.test100, width: 50),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text:AppLanguageKeys.maintenanceAndRepair,
              textSize: 10,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor: AppColors.greyColor,
            ),
            const SizedBox(height: 5),
            TextInAppWidget(
              text: 'أسم مركز الاصلاح',
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.darkColor,
            ),
          ],
        ),
      ],
    );
  }
}
