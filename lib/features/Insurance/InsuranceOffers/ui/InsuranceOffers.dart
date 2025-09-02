import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';

import '../../../../features/Insurance/InsuranceOffers/ui/screens/DefaultTabControllerInsuranceOffers.dart';
import '../../../../features/Insurance/InsuranceOffers/ui/screens/FiestRowTitleInsuranceOffers.dart';

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
