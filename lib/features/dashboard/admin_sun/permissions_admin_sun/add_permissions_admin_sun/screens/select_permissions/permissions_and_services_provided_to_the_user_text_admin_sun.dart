import 'package:flutter/cupertino.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class PermissionsAndServicesProvidedToTheUserTextAdminSun extends StatelessWidget {
  const PermissionsAndServicesProvidedToTheUserTextAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInAppWidget(
      text:AppLanguageKeys.permissionsFromServices,
      textSize: 16,
      fontWeightIndex: FontSelectionData.mediumFontFamily,
      textColor:AppColors.blackColor,
    );
  }
}
