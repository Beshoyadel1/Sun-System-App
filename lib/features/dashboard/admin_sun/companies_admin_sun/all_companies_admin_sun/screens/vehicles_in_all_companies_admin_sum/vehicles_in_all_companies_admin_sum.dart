import 'package:flutter/cupertino.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/custom_widget/design_container_text_with_image_or_icon.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/vehicles_in_all_companies_admin_sum/view_sales_vehicles_and_employee_vehicles.dart';

class VehiclesInAllCompaniesAdminSum extends StatelessWidget {
  const VehiclesInAllCompaniesAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            ViewSalesVehiclesAndEmployeeVehicles(),
            Row(
              children: [
                DesignContainerTextWithImageOrIcon(
                  text: 'إضافة مجموعة جديدة',
                  iconData: CupertinoIcons.add,
                  textColor: AppColors.orangeColor,
                  iconColor: AppColors.orangeColor,
                  containerColor: AppColors.pinkColor,
                  borderColor: AppColors.orangeColor,
                  horizontal: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
