import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/features/Insurance/custom_widget/annual_payment_card.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';

class RowImageLabelButtonMoneyDetailsAnnualPaymentsNew extends StatelessWidget {
  const RowImageLabelButtonMoneyDetailsAnnualPaymentsNew({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnualPaymentCard(
      companyImage: AppImageKeys.company5,
      title: AppLanguageKeys.scienceInsurance,
      subTitle: AppLanguageKeys.comprehensiveInsurance,
      buttonText: AppLanguageKeys.policyData,
      amount: "12000",
      paymentType: AppLanguageKeys.annualPayment,
      onButtonTap: () {},
    );
  }
}
