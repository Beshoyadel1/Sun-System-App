import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_statistics_on_the_number_of_users_and_maintenance_companies/digram_design_statistics_on_the_number_of_users_and_maintenance_companies.dart';
import '../../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_statistics_on_the_number_of_users_and_maintenance_companies/view_number_cars_in_design_statistics_on_the_number_of_users_and_maintenance_companies.dart';
import '../../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_statistics_on_the_number_of_users_and_maintenance_companies/title_design_statistics_on_the_number_of_users_and_maintenance_companies.dart';

class DataContainerDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies extends StatelessWidget {
  const DataContainerDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Column(
        spacing: 20,
        children: [
          TitleDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies(),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ViewNumberCarsInDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies(),
              Expanded(child: DigramDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies()),
            ],
          ),
        ],
      ),
    );
  }
}
