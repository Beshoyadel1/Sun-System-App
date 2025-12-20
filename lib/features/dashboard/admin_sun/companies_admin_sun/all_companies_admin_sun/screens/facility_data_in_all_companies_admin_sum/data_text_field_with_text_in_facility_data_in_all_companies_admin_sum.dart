import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/Admin/permissions/custom_widget/text_with_text_form_field_as_column_widget.dart';

class DataTextFieldWithTextInFacilityDataInAllCompaniesAdminSum
    extends StatelessWidget {
  const DataTextFieldWithTextInFacilityDataInAllCompaniesAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1000;
    return isMobile
        ? Column(
          spacing: 10,
          children: [
            Row(
              spacing: 20,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'اسم المنشأة',
                  hint: '',
                ),
                TextWithTextFormFieldAsColumnWidget(text: 'المدينة', hint: ''),
              ],
            ),
            Row(
              spacing: 20,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'نوع النشاط',
                  hint: '',
                ),
                TextWithTextFormFieldAsColumnWidget(text: 'الايميل', hint: ''),
              ],
            ),
            Row(
              spacing: 20,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'كلمة المرور',
                  hint: '',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'رقم الهاتف',
                  hint: '',
                ),
              ],
            ),
            Row(
              spacing: 20,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'السجل التجاري',
                  hint: '',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'رقم الضريبي',
                  hint: '',
                ),
              ],
            ),
          ],
        )
        : Column(
          spacing: 10,
          children: [
            Row(
              spacing: 20,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'اسم المنشأة',
                  hint: '',
                ),
                TextWithTextFormFieldAsColumnWidget(text: 'المدينة', hint: ''),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'نوع النشاط',
                  hint: '',
                ),
                TextWithTextFormFieldAsColumnWidget(text: 'الايميل', hint: ''),
              ],
            ),
            Row(
              spacing: 20,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'كلمة المرور',
                  hint: '',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'رقم الهاتف',
                  hint: '',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'السجل التجاري',
                  hint: '',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'رقم الضريبي',
                  hint: '',
                ),
              ],
            ),
          ],
        );
  }
}
