import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_details_car/container_sold.dart';
import '../../../../../../features/dashboard/Admin/service_settings/custom_widget/text_with_text_form_field_as_column2_widget.dart';

class OtherDataSunPackagesManagementAdminSun extends StatelessWidget {
  const OtherDataSunPackagesManagementAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        TextWithTextFormFieldAsColumn2Widget(
            text: 'عنوان النص',
            hint: 'عن صن',
        ),
        TextWithTextFormFieldAsColumn2Widget(
          text: ' المقال',
          hint: '',
          maxLines: 5,
        ),
        TextWithTextFormFieldAsColumn2Widget(
          text: 'سعر الباقة',
          hint: '',
        ),
        Row(
          children: [
            ContainerSold(
              horizontal: 50,
              vertical: 7,
              text:'تحديث البيانات',
            ),
          ],
        )
      ],
    );
  }
}
