import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_statistics_on_the_number_of_users_and_maintenance_companies/data_container_design_statistics_on_the_number_of_users_and_maintenance_companies.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies extends StatelessWidget {
  const ContainerDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies({super.key});

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
      child: DataContainerDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies(),
    );
  }
}
