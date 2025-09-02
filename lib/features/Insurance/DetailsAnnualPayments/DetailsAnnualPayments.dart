import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import '../../../../features/Insurance/CustomWidget/AppBarInsuranceOffers.dart';
import '../../../../features/Insurance/DetailsAnnualPayments/ui/screens/ContainerAnnualPayment.dart';
import '../../../../features/Insurance/DetailsAnnualPayments/ui/screens/FirstRowInsuranceOffers.dart';
import '../../../../features/Insurance/DetailsAnnualPayments/ui/screens/RowImageLabelButtonMoneyDetailsAnnualPayments.dart';

class DetailsAnnualPayments extends StatelessWidget {
  const DetailsAnnualPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                FirstRowInsuranceOffers(),
                SizedBox(height: 40,),
                RowImageLabelButtonMoneyDetailsAnnualPayments(),
                SizedBox(height: 40,),
                ContainerAnnualPayment()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
