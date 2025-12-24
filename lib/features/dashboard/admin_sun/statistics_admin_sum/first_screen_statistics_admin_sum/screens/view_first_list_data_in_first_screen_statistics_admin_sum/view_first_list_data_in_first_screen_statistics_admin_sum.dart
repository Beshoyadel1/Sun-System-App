import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/view_first_list_data_in_first_screen_statistics_admin_sum/mobile_view_first_list_data_in_first_screen_statistics_admin_sum.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/view_first_list_data_in_first_screen_statistics_admin_sum/web_view_first_list_data_in_first_screen_statistics_admin_sum.dart';

class ViewFirstListDataInFirstScreenStatisticsAdminSum extends StatelessWidget {
  const ViewFirstListDataInFirstScreenStatisticsAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1276;

    return isMobile?
    MobileViewFirstListDataInFirstScreenStatisticsAdminSum()
        :
    WebViewFirstListDataInFirstScreenStatisticsAdminSum();
  }
}
