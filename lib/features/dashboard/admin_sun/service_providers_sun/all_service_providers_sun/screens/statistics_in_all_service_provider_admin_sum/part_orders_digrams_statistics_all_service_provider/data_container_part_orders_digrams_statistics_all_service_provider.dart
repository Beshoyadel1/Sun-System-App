import 'package:flutter/cupertino.dart';
import '../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_orders_digrams_statistics_all_service_provider/design_digram_part_orders_digrams_statistics_all_service_provider.dart';
import '../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_orders_digrams_statistics_all_service_provider/select_from_to_with_title_in_part_orders_digrams_statistics_all_service_provider.dart';

class DataContainerPartOrdersDigramsStatisticsAllServiceProvider extends StatelessWidget {
  const DataContainerPartOrdersDigramsStatisticsAllServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 20,
        children: [
          SelectFromToWithTitleInPartOrdersDigramsStatisticsAllServiceProvider(),
          Flexible(child: DesignDigramPartOrdersDigramsStatisticsAllServiceProvider())
        ],
      ),
    );
  }
}
