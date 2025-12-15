import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_details_car/container_sold.dart';
import '../../../../../../features/dashboard/Admin/permissions/custom_widget/text_with_text_form_field_as_column_widget.dart';

class ListEnterDataInDetailsInsuranceAdminSun extends StatelessWidget {
  const ListEnterDataInDetailsInsuranceAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          spacing: 20,
          children: [
            TextWithTextFormFieldAsColumnWidget(text: 'اسم المؤسسة', hint: 'اسم المؤسسة'),
            TextWithTextFormFieldAsColumnWidget(text: 'رقم الحساب', hint: 'رقم الحساب'),
            TextWithTextFormFieldAsColumnWidget(text: 'المبلع', hint: '5000 ريال')
          ],
        ),
        Row(
          children: [
            ContainerSold(text: 'تأكيد التحويل'),
          ],
        )
      ],
    );
  }
}
