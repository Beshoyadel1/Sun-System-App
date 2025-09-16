import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';

class ColumnTwoTextInInLastRowContainerMobileServiceInServiceRequest extends StatelessWidget {
  const ColumnTwoTextInInLastRowContainerMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: TextInAppWidget(
        text: AppLanguageKeys.serviceRating,
        textSize: 10,
        fontWeightIndex: FontSelectionData.regularFontFamily,
        textColor: AppColors.whiteColor,
      ),
    );
  }
}
