import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/second_row_digram_with_in_statistics_in_all_service_provider_admin_sum.dart';
import '../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/first_row_digram_with_in_statistics_in_all_service_provider_admin_sum.dart';

class StatisticsInAllServiceProviderAdminSum extends StatelessWidget {
  const StatisticsInAllServiceProviderAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.all(10),
      child: Column(
        spacing: 10,
        children: [
          FirstRowDigramWithInStatisticsInAllServiceProviderAdminSum(),
          SecondRowDigramWithInStatisticsInAllServiceProviderAdminSum()
        ],
      ),
    );
  }
}
