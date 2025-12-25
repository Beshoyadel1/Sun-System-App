import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/new_applications_design_statistics_admin_sum/container_new_applications_design_statistics_admin_sum.dart';
import '../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/commission_digram_design_statistics_admin_sum/container_commission_digram_design_statistics_admin_sum.dart';
import '../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/view_first_list_data_in_first_screen_statistics_admin_sum/view_first_list_data_in_first_screen_statistics_admin_sum.dart';

class DataContainerInListDataFirstScreenStatisticsAdminSum extends StatelessWidget {
  const DataContainerInListDataFirstScreenStatisticsAdminSum({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 940;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ViewFirstListDataInFirstScreenStatisticsAdminSum(),
          ContainerCommissionDigramDesignStatisticsAdminSum(),
          ContainerNewApplicationsDesignStatisticsAdminSum(),
        ],
      ),
    );
  }
}
