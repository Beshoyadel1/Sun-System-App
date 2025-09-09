import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../features/profile/custom_widget/first_name_textfield_personal_data_widget.dart';
import '../../../../../core/theming/colors.dart';

class ListFirstNameTextFieldPersonalDataWidget extends StatelessWidget {
  const ListFirstNameTextFieldPersonalDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 25,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //

        const FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.username,
          hint:'عمرو محي الدين',
        ),
        const FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.email,
          hint:'amr@gmail,com',
        ),
        const FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.password,
          hint:'***',
        ),
        const FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.nationality,
          hint:'مصري',
        ),
        const FirstNameTextfieldPersonalDataWidget(
          isLanguage: true,
          name:AppLanguageKeys.language,
        ),
      ],
    );
  }
}
