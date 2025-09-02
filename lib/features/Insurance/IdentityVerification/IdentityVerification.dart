import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/pages_widgets/button_widget.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../features/Insurance/CustomWidget/AppBarInsuranceOffers.dart';
import '../../../../features/Insurance/IdentityVerification/ui/screens/ButtonIdentityVerification.dart';

class IdentityVerification extends StatelessWidget {
  const IdentityVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textFormController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInAppWidget(
                text:AppLanguageKeys.enterPolicyData,
                textSize: 16,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
                textColor:AppColors.darkColor,
              ),
              SizedBox(
                height: 20,
              ),
              TextInAppWidget(
                text:AppLanguageKeys.policyNumber,
                textSize: 14,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
                textColor:AppColors.darkColor,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                textFormController: textFormController,
                fillColor: AppColors.whiteColor,
                borderColor:AppColors.darkColor.withOpacity(0.2),
                textFormWidth: 300,
              ),
              ButtonIdentityVerification()
            ],
          ),
        ),
      ),
    );
  }
}
