import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_left/part_petroleum_consumption_statistics_in_all_companies/container_part_petroleum_consumption_statistics_in_all_companies.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_left/part_automotive_service_and_maintenance_statistics_all_companies/container_part_automotive_service_and_maintenance_statistics_all_companies.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_right/container_data_right_statistics_admin_sum.dart';


class StatisticsInAllCompaniesAdminSum extends StatelessWidget {
  const StatisticsInAllCompaniesAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1000;
    bool isTabletCustom = size.width > 1000 && size.width <= 1320;
    bool isTab = size.width > 1320;

    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ContainerDataRightStatisticsAdminSum(),
                ),
              ),
              if ((!isMobile))
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      spacing: 10,
                      children: [
                        ContainerPartPetroleumConsumptionStatisticsInAllCompanies(),
                        ContainerPartAutomotiveServiceAndMaintenanceStatisticsAllCompanies(),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
