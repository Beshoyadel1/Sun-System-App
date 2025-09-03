import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/features/Insurance/CustomWidget/ContainerInvoiceWidget.dart';
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

class ContainerInvoice extends StatelessWidget {
  const ContainerInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerInvoiceWidget(
        priceInsuranceInstallment: '1000',
        priceTaxes: '00.00',
        priceTotal: '1000.00'
    );
  }
}
