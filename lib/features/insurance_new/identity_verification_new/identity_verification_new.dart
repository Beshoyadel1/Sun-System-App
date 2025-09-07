import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/features/insurance_new/identity_verification_new/ui/screens/button_identity_verification_new.dart';
import 'package:sun_system_app/features/insurance_new/identity_verification_new/ui/screens/first_name_textfield_identity_verification_new.dart';
import 'package:sun_system_app/features/insurance_new/identity_verification_new/ui/screens/first_text_identity_verification_new.dart';
import 'package:sun_system_app/features/insurance_new/identity_verification_new/ui/screens/second_row_identity_verification_new.dart';
import 'package:sun_system_app/features/insurance_new/identity_verification_new/ui/screens/second_row_name_textfield_identity_verification_new.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../features/Insurance/custom_widget/appbar_insurance_offers.dart';

class IdentityVerificationNew extends StatelessWidget {
  const IdentityVerificationNew({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textFormController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentGeometry.center,
            child: SizedBox(
              width: 500,
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FirstTextIdentityVerificationNew(),
                  SecondRowIdentityVerificationNew(),
                  FirstNameTextfieldIdentityVerificationNew(),
                  SecondRowNameTextfieldIdentityVerificationNew(),
                  ButtonIdentityVerificationNew()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
