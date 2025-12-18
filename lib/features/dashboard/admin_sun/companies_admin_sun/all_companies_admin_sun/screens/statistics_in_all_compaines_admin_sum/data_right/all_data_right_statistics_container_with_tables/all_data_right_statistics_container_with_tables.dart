import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_right/all_data_right_statistics_container_with_tables/container_data_all_data_right_statistics_container_with_tables.dart';
import '../../../../../../../../../features/dashboard/admin_sun/permissions_admin_sun/first_screen_permissions_admin_sun/screens/all_permissions_list/container_data_all_permissions_list.dart';

class AllDataRightStatisticsContainerWithTables extends StatelessWidget {
  const AllDataRightStatisticsContainerWithTables({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerDataAllDataRightStatisticsContainerWithTables(

          ),
          ContainerDataAllDataRightStatisticsContainerWithTables(

          ),
          ContainerDataAllDataRightStatisticsContainerWithTables(

          ),
          ContainerDataAllDataRightStatisticsContainerWithTables(

          ),
          ContainerDataAllDataRightStatisticsContainerWithTables(

          ),
        ],
      ),
    );
  }
}