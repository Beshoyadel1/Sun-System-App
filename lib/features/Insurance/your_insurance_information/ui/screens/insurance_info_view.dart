import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/your_insurance_information/ui/screens/data_change_insurance_info_view.dart';
import '../../../../../features/Insurance/custom_widget/loading_widget.dart';
import '../../../../../features/Insurance/your_insurance_information/ui/screens/insurance_info_content.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/custom_widget/appbar_insurance_offers.dart';
import '../../../../../features/Insurance/details_annual_payments/details_annual_payments.dart';
import '../../../../../features/Insurance/your_insurance_information/logic/your_insurance_info_cubit.dart';
import '../../../../../features/Insurance/your_insurance_information/logic/your_Insurance_info_state.dart';
import '../../../../../features/Insurance/your_insurance_information/ui/screens/first_row_your_insurance_information.dart';

class InsuranceInfoView extends StatelessWidget {
  const InsuranceInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextInAppWidget(
                      text: AppLanguageKeys.yourInsuranceData,
                      textSize: 16,
                      fontWeightIndex: FontSelectionData.mediumFontFamily,
                      textColor: AppColors.darkColor,
                    ),
                    const SizedBox(height: 20),
                    FirstRowRowYourInsuranceInformation(),
                    const SizedBox(height: 40),
                    DataChangeInsuranceInfoView()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
