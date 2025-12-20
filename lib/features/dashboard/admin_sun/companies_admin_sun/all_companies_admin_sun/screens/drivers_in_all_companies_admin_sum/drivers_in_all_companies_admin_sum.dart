import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/drivers_in_all_companies_admin_sum/design_container_table_orders_in_all_companies_admin_sum.dart';


class DriversInAllCompaniesAdminSum extends StatelessWidget {
  const DriversInAllCompaniesAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 30,
          children: [
            DesignContainerTableOrdersInAllCompaniesAdminSum(
              isNewOrder: true,
            ),
            DesignContainerTableOrdersInAllCompaniesAdminSum(
              isNewOrder: true,
            ),
            DesignContainerTableOrdersInAllCompaniesAdminSum(
              isNewOrder: true,
            ),
            DesignContainerTableOrdersInAllCompaniesAdminSum(
              isNewOrder: true,
            ),
            DesignContainerTableOrdersInAllCompaniesAdminSum(
              isNewOrder: true,
            ),
            DesignContainerTableOrdersInAllCompaniesAdminSum(
              isNewOrder: true,
            ),
          ],
        ),
      ),
    );
  }
}
