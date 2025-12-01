import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../features/dashboard/Admin/permissions/custom_widget/text_with_text_form_field_as_column_widget.dart';


class DataNameWithTextFieldPersonalDataEmp extends StatelessWidget {
  const DataNameWithTextFieldPersonalDataEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 50,
          children: [
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.employeeName,
              hint: AppLanguageKeys.employeeName,
              borderRadius: 5,
            ),
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.jobTitle,
              hint: AppLanguageKeys.jobTitle,
              borderRadius: 5,
            ),
          ],
        ),
        Row(
          spacing: 50,
          children: [
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.jobTitle,
              hint: 'موظف اصلاح وخدمات',
              borderRadius: 5,
            ),
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.employeeId,
              hint: '21212',
              borderRadius: 5,
            ),
          ],
        ),
        Row(
          spacing: 50,
          children: [
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.email,
              hint: 'MOHA@GMAIL.COM',
              borderRadius: 5,
            ),
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.joiningDate,
              hint:'1/1/2025',
              borderRadius: 5,
            ),
          ],
        ),
        Row(
          spacing: 50,
          children: [
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.password,
              hint: '*****',
              borderRadius: 5,
            ),
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.phoneNumber,
              hint: '+96650442321',
              borderRadius: 5,
            ),
          ],
        ),
        Row(
          spacing: 50,
          children: [
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.address,
              hint: AppLanguageKeys.address,
              borderRadius: 5,
            ),
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.accountStatus,
              hint: 'مفعل',
              borderRadius: 5,
            ),
          ],
        ),
      ],
    );
  }
}