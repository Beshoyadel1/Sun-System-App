import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/Insurance/custom_widget/end_button_screen.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/check_your_national_access_account/ui/check_yourn_national_access_account.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class FirstTextIdentityVerificationNew extends StatelessWidget {
  const FirstTextIdentityVerificationNew({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInAppWidget(
      text:AppLanguageKeys.yourInsuranceData,
      textSize: 16,
      fontWeightIndex: FontSelectionData.mediumFontFamily,
      textColor:AppColors.darkColor,
    );
  }
}
