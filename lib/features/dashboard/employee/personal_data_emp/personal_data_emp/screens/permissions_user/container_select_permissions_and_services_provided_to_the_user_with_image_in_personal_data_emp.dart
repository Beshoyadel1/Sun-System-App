import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/employee/personal_data_emp/personal_data_emp/screens/permissions_user/select_permissions_and_services_provided_to_the_user_with_image_in_personal_data_emp.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerSelectPermissionsAndServicesProvidedToTheUserWithImageInPersonalDataEmp extends StatelessWidget {
  const ContainerSelectPermissionsAndServicesProvidedToTheUserWithImageInPersonalDataEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.greyColor.withOpacity(0.3)
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SelectPermissionsAndServicesProvidedToTheUserWithImageInPersonalDataEmp(),
    );
  }
}
