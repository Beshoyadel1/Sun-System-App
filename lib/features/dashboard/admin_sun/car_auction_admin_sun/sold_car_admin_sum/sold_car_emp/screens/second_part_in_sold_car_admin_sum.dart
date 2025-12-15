import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/Admin/service_settings/custom_widget/text_with_text_form_field_as_column2_widget.dart';


class SecondPartInSoldCarAdminSum extends StatelessWidget {
  const SecondPartInSoldCarAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return TextWithTextFormFieldAsColumn2Widget(
      text: 'سعر بيع السيارة',
      hint: '300.000',
      textFormWidth: 200,
    );
  }
}
