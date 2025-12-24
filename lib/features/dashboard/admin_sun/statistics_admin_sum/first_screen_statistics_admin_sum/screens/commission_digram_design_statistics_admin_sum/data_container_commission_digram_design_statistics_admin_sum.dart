import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/commission_digram_design_statistics_admin_sum/digram_data_container_commission_digram_design_statistics_admin_sum.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/commission_digram_design_statistics_admin_sum/title_with_choose_from_to_in_data_container_commission_digram_design_statistics_admin_sum.dart';

class DataContainerCommissionDigramDesignStatisticsAdminSum extends StatelessWidget {
  const DataContainerCommissionDigramDesignStatisticsAdminSum({super.key});
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
          TitleWithChooseFromToInDataContainerCommissionDigramDesignStatisticsAdminSum(),
          DigramDataContainerCommissionDigramDesignStatisticsAdminSum(),
        ],
      ),
    );
  }
}
