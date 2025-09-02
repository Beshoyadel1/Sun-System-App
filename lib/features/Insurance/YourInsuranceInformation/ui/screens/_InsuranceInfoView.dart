import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/button_widget.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/Insurance/CustomWidget/AppBarInsuranceOffers.dart';
import 'package:sun_system_app/features/Insurance/DetailsAnnualPayments/DetailsAnnualPayments.dart';
import 'package:sun_system_app/features/Insurance/IdentityVerification/IdentityVerification.dart';
import 'package:sun_system_app/features/Insurance/YourInsuranceInformation/logic/InsuranceInfoCubit.dart';
import 'package:sun_system_app/features/Insurance/YourInsuranceInformation/logic/InsuranceInfoState.dart';
import 'package:sun_system_app/features/Insurance/YourInsuranceInformation/ui/screens/DataYourInsuranceInformation.dart';
import 'package:sun_system_app/features/Insurance/YourInsuranceInformation/ui/screens/FirstRowRowYourInsuranceInformation.dart';

class InsuranceInfoView extends StatelessWidget {
  const InsuranceInfoView();

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
                BlocConsumer<InsuranceInfoCubit, InsuranceInfoState>(
                  listener: (context, state) {
                    if (state is InsuranceInfoSuccess) {
                      Navigator.of(context).push(
                        NavigateToPageWidget(DetailsAnnualPayments()),
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is InsuranceInfoLoading) {
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            SizedBox(height: 50),
                            CircularProgressIndicator(),
                            SizedBox(height: 10),
                            TextInAppWidget(
                              text: AppLanguageKeys.pleaseWait,
                              textSize: 20,
                              fontWeightIndex: FontSelectionData.mediumFontFamily,
                              textColor: AppColors.darkColor,
                            ),                          ],
                        ),
                      );
                    }
                    return Column(
                      children: [
                        DataYourInsuranceInformation(),
                        const SizedBox(height: 20),
                        ButtonWidget(
                          text: AppLanguageKeys.linkInsuranceWithSanad,
                          textColor: AppColors.whiteColor,
                          buttonColor: AppColors.orangeColor,
                          textSize: 12,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          heightContainer: 50,
                          widthContainer: 300,
                          borderRadius: 20,
                          onTap: () {
                            context.read<InsuranceInfoCubit>().linkInsurance();
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
