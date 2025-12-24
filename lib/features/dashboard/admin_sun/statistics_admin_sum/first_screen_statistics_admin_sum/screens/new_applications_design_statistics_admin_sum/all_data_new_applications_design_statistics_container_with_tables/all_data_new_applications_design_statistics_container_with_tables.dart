import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/new_applications_design_statistics_admin_sum/all_data_new_applications_design_statistics_container_with_tables/container_all_data_new_applications_design_statistics_container_with_tables.dart';

class AllDataNewApplicationsDesignStatisticsContainerWithTables
    extends StatelessWidget {
  const AllDataNewApplicationsDesignStatisticsContainerWithTables({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerAllDataNewApplicationsDesignStatisticsContainerWithTables(),
          ContainerAllDataNewApplicationsDesignStatisticsContainerWithTables(),
          ContainerAllDataNewApplicationsDesignStatisticsContainerWithTables(),
          ContainerAllDataNewApplicationsDesignStatisticsContainerWithTables(),
          ContainerAllDataNewApplicationsDesignStatisticsContainerWithTables(),
        ],
      ),
    );
  }
}
