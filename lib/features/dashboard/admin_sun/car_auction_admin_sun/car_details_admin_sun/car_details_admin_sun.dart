import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_automotive_service_and_maintenance_statistics/container_part_automotive_service_and_maintenance_statistics.dart';
import '../../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_car_billing_details/container_part_car_billing_details.dart';
import '../../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_fuel_consumption_rate/container_part_fuel_consumption_rate.dart';
import '../../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_edit_delete_message_admin_sun/container_part_edit_delete_message_admin_sun.dart';
import '../../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/list_data_car_details_admin_sun.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../features/dashboard/Admin/service_settings/custom_widget/appbar_dashboard_widget.dart';
import '../../../../../features/dashboard/Admin/service_settings/custom_widget/backgroundDesktop.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/language/language_constant.dart';

class CarDetailsAdminSun extends StatelessWidget {
  const CarDetailsAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 960;
    bool isTabletCustom = size.width > 960 && size.width <= 1320;
    bool isTab = size.width > 1320;

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
            appBar: AppbarDashboardWidget(title: AppLanguageKeys.allOrders),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 10,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListDataCarDetailsAdminSun(),
                          ),
                        ),

                        if ((!isMobile))
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ContainerPartEditDeleteMessageAdminSun(),
                            ),
                          ),
                      ],
                    ),
                    isTab
                        ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: ContainerPartFuelConsumptionRate(),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child:
                                    ContainerPartAutomotiveServiceAndMaintenanceStatistics(),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ContainerPartCarBillingDetails(),
                              ),
                            ),
                          ],
                        )
                        : isTabletCustom
                        ? Column(
                          spacing: 10,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: ContainerPartFuelConsumptionRate(),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child:
                                        ContainerPartAutomotiveServiceAndMaintenanceStatistics(),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ContainerPartCarBillingDetails(),
                            ),
                          ],
                        )
                        : Column(
                          spacing: 10,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: ContainerPartFuelConsumptionRate(),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child:
                                  ContainerPartAutomotiveServiceAndMaintenanceStatistics(),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ContainerPartCarBillingDetails(),
                            ),
                          ],
                        ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
