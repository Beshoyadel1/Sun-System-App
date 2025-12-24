import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_statistics_on_the_most_requested_services_admin_sum/data_container_design_statistics_on_the_most_requested_services_admin_sum.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerDesignStatisticsOnTheMostRequestedServicesAdminSum extends StatelessWidget {
  const ContainerDesignStatisticsOnTheMostRequestedServicesAdminSum({super.key});

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
      child: DataContainerDesignStatisticsOnTheMostRequestedServicesAdminSum(),
    );
  }
}
