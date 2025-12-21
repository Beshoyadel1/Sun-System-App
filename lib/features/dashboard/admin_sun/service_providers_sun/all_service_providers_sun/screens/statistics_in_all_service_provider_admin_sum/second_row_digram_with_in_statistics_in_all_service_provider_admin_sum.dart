import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_account_balance_statistics_all_service_provider/container_part_account_balance_statistics_all_service_provider.dart';
import '../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_top_performing_employees_statistics_all_service_provider/container_part_top_performing_employees_statistics_all_service_provider.dart';
import '../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_rates_statistics_all_service_provider/container_part_rates_statistics_all_service_provider.dart';
import '../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_orders_digrams_statistics_all_service_provider/container_part_orders_digrams_statistics_all_service_provider.dart';

class SecondRowDigramWithInStatisticsInAllServiceProviderAdminSum
    extends StatelessWidget {
  const SecondRowDigramWithInStatisticsInAllServiceProviderAdminSum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1380;
    return isMobile
        ? Column(
          spacing: 10,
          children: [
            SizedBox(
              height: 320,
              child:
              ContainerPartOrdersDigramsStatisticsAllServiceProvider(),
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: Column(
                    spacing: 10,
                    children: [
                      ContainerPartRatesStatisticsAllServiceProvider(),
                      ContainerPartTopPerformingEmployeesStatisticsAllServiceProvider(),
                    ],
                  ),
                ),
                Expanded(
                  child:
                  ContainerPartAccountBalanceStatisticsAllServiceProvider(),
                ),
              ],
            ),
          ],
        )
        : Row(
          spacing: 10,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 320,
                child: ContainerPartOrdersDigramsStatisticsAllServiceProvider(),
              ),
            ),
            Expanded(
              child: Column(
                spacing: 10,
                children: [
                  ContainerPartRatesStatisticsAllServiceProvider(),
                  ContainerPartTopPerformingEmployeesStatisticsAllServiceProvider(),
                ],
              ),
            ),
            Expanded(
              child: ContainerPartAccountBalanceStatisticsAllServiceProvider(),
            ),
          ],
        );
  }
}
