import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';

class PartOneRowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest extends StatelessWidget {
  const PartOneRowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Image.asset(AppImageKeys.person10,height: 35,),
        TextInAppWidget(
          text: AppLanguageKeys.maintenanceRep,
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
      ],
    );
  }
}
