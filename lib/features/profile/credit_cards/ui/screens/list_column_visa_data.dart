import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/profile/custom_widget/first_name_textfield_personal_data_widget.dart';
import 'package:flutter/material.dart';
import '../../../../../features/profile/credit_cards/ui/screens/list_column_visa_data.dart';
import '../../../../../features/profile/custom_widget/first_name_textfield_personal_data_widget.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
class ListColumnVisaData extends StatelessWidget {
  const ListColumnVisaData({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 20,
      children: [
        FirstNameTextfieldPersonalDataWidget(
          isCard: true,
          name: AppLanguageKeys.cardName,
          hint: 'Amr Mohy ',
        ),
        FirstNameTextfieldPersonalDataWidget(
          isCard: true,
          name: AppLanguageKeys.cardNumber,
          hint: '3822 8293 8292 2356 ',
        ),
        Row(
          spacing: 20,
          children: [
            Expanded(
              child: FirstNameTextfieldPersonalDataWidget(
                isCard: true,
                name: AppLanguageKeys.cvv,
                hint: '356',
              ),
            ),
            Expanded(
              child: FirstNameTextfieldPersonalDataWidget(
                isCard: true,
                name: AppLanguageKeys.expiryDate,
                hint: '11/30',
              ),
            ),
          ],
        )
      ],
    );
  }
}
