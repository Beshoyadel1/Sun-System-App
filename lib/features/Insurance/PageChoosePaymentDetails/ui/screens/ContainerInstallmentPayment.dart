import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/Insurance/CustomWidget/ContainerInstallmentPaymentWidget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/CustomWidget/AppBarInsuranceOffers.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/ContainerAnnualPayment.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/FirstRowInsuranceOffers.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/RowImageLabelButtonMoneyDetailsAnnualPayments.dart';

class ContainerInstallmentPayment extends StatelessWidget {
  const ContainerInstallmentPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerInstallmentPaymentWidget(
      title: AppLanguageKeys.payInstallment,
        nameCompany:AppLanguageKeys.insuranceOffersOnly,
        date:'20/3/2025',
        logoCompany:AppImageKeys.company1,
        price:'1000',
    );
  }
}
