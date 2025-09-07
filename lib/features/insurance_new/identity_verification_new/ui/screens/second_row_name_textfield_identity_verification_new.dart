import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/pages_widgets/text_form_field_widget.dart';
import 'package:sun_system_app/features/insurance_new/custom_widget/first_name_textfield_identity_verification_new_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/Insurance/custom_widget/end_button_screen.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/check_your_national_access_account/ui/check_yourn_national_access_account.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class SecondRowNameTextfieldIdentityVerificationNew extends StatelessWidget {
  const SecondRowNameTextfieldIdentityVerificationNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FirstNameTextfieldIdentityVerificationNewWidget(
            name: AppLanguageKeys.carPlateNumber,
          ),
        ),
        SizedBox(width: 10), // optional spacing
        Expanded(
          child: FirstNameTextfieldIdentityVerificationNewWidget(
            name: AppLanguageKeys.chassisNumber,
          ),
        ),
      ],
    );
  }
}
