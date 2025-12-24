import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_order_sales_statistics_admin_sum/digram_data_container_design_order_sales_statistics_admin_sum.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_order_sales_statistics_admin_sum/first_title_with_sub_items_in_data_container_design_order_sales_statistics_admin_sum.dart';


class DataContainerDesignOrderSalesStatisticsAdminSum extends StatelessWidget {
  const DataContainerDesignOrderSalesStatisticsAdminSum({super.key});
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
          FirstTitleWithSubItemsInDataContainerDesignOrderSalesStatisticsAdminSum(),
          DigramDataContainerDesignOrderSalesStatisticsAdminSum()
        ],
      ),
    );
  }
}
