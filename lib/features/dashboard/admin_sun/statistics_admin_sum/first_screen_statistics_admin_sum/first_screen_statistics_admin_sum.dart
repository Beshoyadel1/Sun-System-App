import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_statistics_on_the_number_of_users_and_maintenance_companies/container_design_statistics_on_the_number_of_users_and_maintenance_companies.dart';
import '../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_statistics_on_the_most_requested_services_admin_sum/container_design_statistics_on_the_most_requested_services_admin_sum.dart';
import '../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_order_sales_statistics_admin_sum/container_design_order_sales_statistics_admin_sum.dart';
import '../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/data_container_in_list_data_first_screen_statistics_admin_sum.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../features/dashboard/Admin/service_settings/custom_widget/appbar_dashboard_widget.dart';
import '../../../../../features/dashboard/Admin/service_settings/custom_widget/backgroundDesktop.dart';
import '../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/language/language_constant.dart';

class FirstScreenStatisticsAdminSum extends StatelessWidget {
  const FirstScreenStatisticsAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth + 50;
    bool isTabletCustom =
        size.width > ValuesOfAllApp.mobileWidth &&
        size.width <= ValuesOfAllApp.customTabWidth;
    bool isTab = size.width > ValuesOfAllApp.tabWidth;

    return Row(
      children: [
        if (!isMobile)
          const backgroundDesktop(
            color: AppColors.whiteColor,
            imagePath: AppImageKeys.container_background_sun,
          ),
        Expanded(
          flex: 5,
          child: Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppbarDashboardWidget(
              title: AppLanguageKeys.technicalSupport,
            ),
            body: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          spacing: 10,
                          children: [
                            DataContainerInListDataFirstScreenStatisticsAdminSum(),
                            if ((isMobile))
                              Column(
                                spacing: 10,
                                children: [
                                  ContainerDesignOrderSalesStatisticsAdminSum(),
                                  ContainerDesignStatisticsOnTheMostRequestedServicesAdminSum(),
                                  ContainerDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies(),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if ((!isMobile))
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SingleChildScrollView(
                          child: Column(
                            spacing: 10,
                            children: [
                              ContainerDesignOrderSalesStatisticsAdminSum(),
                              ContainerDesignStatisticsOnTheMostRequestedServicesAdminSum(),
                              ContainerDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies(),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
