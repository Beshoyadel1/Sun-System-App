import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/orders_in_all_companies_admin_sum/design_container_table_orders_in_all_companies_admin_sum.dart';


class ListDataContainerOrdersInAllCompaniesAdminSum extends StatelessWidget {
  const ListDataContainerOrdersInAllCompaniesAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 30,
        children: [
          DesignContainerTableOrdersInAllCompaniesAdminSum(
            isWaitingForApproval: true,
          ),
          DesignContainerTableOrdersInAllCompaniesAdminSum(),
          DesignContainerTableOrdersInAllCompaniesAdminSum(),
          DesignContainerTableOrdersInAllCompaniesAdminSum(),
          DesignContainerTableOrdersInAllCompaniesAdminSum(),
          DesignContainerTableOrdersInAllCompaniesAdminSum(),
        ],
      ),
    );
  }
}
