import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/new_applications_design_statistics_admin_sum/all_data_new_applications_design_statistics_container_with_tables/all_data_new_applications_design_statistics_container_with_tables.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerNewApplicationsDesignStatisticsAdminSum extends StatelessWidget {
  const ContainerNewApplicationsDesignStatisticsAdminSum({super.key});

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
      child: AllDataNewApplicationsDesignStatisticsContainerWithTables(),
    );
  }
}
