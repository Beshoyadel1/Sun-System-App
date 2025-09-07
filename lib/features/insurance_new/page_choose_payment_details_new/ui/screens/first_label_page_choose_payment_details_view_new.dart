import 'package:flutter/cupertino.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/ui/screens/design_cubit_list_visa_new.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class FirstLabelPageChoosePaymentDetailsViewNew extends StatelessWidget {
  const FirstLabelPageChoosePaymentDetailsViewNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.firstPayment,
          textSize: 10,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
      ],
    );
  }
}
