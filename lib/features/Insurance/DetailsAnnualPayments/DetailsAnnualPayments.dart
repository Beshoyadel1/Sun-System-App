import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/Insurance/CustomWidget/AppBarInsuranceOffers.dart';
import 'package:sun_system_app/features/Insurance/DetailsAnnualPayments/ui/screens/ContainerAnnualPayment.dart';
import 'package:sun_system_app/features/Insurance/DetailsAnnualPayments/ui/screens/FirstRowInsuranceOffers.dart';
import 'package:sun_system_app/features/Insurance/DetailsAnnualPayments/ui/screens/RowImageLabelButtonMoneyDetailsAnnualPayments.dart';

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
