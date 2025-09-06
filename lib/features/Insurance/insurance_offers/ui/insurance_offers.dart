import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../features/Insurance/insurance_offers/ui/screens/default_tab_controller_insurance_offers.dart';
import '../../../../features/Insurance/insurance_offers/ui/screens/fiest_row_title_insurance_offers.dart';

class InsuranceOffers extends StatefulWidget {
  const InsuranceOffers({super.key});

  @override
  State<InsuranceOffers> createState() => _InsuranceOffersState();
}

class _InsuranceOffersState extends State<InsuranceOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              FiestRowTitleInsuranceOffers(),
              Expanded(
                child: DefaultTabControllerInsuranceOffers(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
