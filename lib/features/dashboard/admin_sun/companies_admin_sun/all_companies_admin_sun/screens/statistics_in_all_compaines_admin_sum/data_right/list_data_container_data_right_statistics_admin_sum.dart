import 'package:flutter/cupertino.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_left/part_automotive_service_and_maintenance_statistics_all_companies/container_part_automotive_service_and_maintenance_statistics_all_companies.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_left/part_petroleum_consumption_statistics_in_all_companies/container_part_petroleum_consumption_statistics_in_all_companies.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_right/all_data_right_statistics_container_with_tables/all_data_right_statistics_container_with_tables.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_right/part_of_list_container_in_statistics_data_right_admin_sun.dart';

class ListDataContainerDataRightStatisticsAdminSum extends StatelessWidget {
  const ListDataContainerDataRightStatisticsAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1000;
    return Column(
      spacing: 30,
      children: [
        PartOfListContainerInStatisticsDataRightAdminSun(),
        AllDataRightStatisticsContainerWithTables(),
        if(isMobile)
          Column(
            spacing: 10,
            children: [
              ContainerPartPetroleumConsumptionStatisticsInAllCompanies(),
              ContainerPartAutomotiveServiceAndMaintenanceStatisticsAllCompanies(),
            ],
          ),
      ],
    );
  }
}
