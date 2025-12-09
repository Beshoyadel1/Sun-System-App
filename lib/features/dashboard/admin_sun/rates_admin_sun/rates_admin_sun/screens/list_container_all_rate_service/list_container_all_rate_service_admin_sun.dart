import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/rates_admin_sun/screens/list_container_all_rate_service/mobile_list_container_all_rate_service_admin_sun.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/rates_admin_sun/screens/list_container_all_rate_service/tab_list_container_all_rate_service_admin_sun.dart';

class ListContainerAllRateServiceAdminSun extends StatelessWidget {
  const ListContainerAllRateServiceAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width > 500 && size.width <= 700;
    bool isTab = size.width > 700;
    return isTab?TabListContainerAllRateServiceAdminSun()
        :
    MobileListContainerAllRateServiceAdminSun();
  }
}

