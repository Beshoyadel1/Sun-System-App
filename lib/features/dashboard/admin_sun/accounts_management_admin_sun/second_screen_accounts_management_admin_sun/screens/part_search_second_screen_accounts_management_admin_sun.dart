import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_details_car/container_sold.dart';
import '../../../../../../features/dashboard/Admin/permissions/custom_widget/text_with_text_form_field_as_column_widget.dart';

class PartSearchSecondScreenAccountsManagementAdminSun extends StatelessWidget {
  const PartSearchSecondScreenAccountsManagementAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
           TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.search,
              hint: 'اسم المركز',
              textFormWidth: 500,
          ),
        Flexible(
          child: ContainerSold(
            text: AppLanguageKeys.search,
            backGroundColor: AppColors.greyColor,
            horizontal: 40,
          ),
        )
      ],
    );
  }
}
