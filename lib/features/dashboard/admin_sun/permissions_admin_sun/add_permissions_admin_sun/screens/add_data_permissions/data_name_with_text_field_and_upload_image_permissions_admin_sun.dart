import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/permissions_admin_sun/add_permissions_admin_sun/screens/add_data_permissions/web_of_data_container_in_list_data_first_screen_permissions_admin_sun.dart';
import '../../../../../../../features/dashboard/admin_sun/permissions_admin_sun/add_permissions_admin_sun/screens/add_data_permissions/mobile_of_data_container_in_list_data_first_screen_permissions_admin_sun.dart';
import '../../../../../../../core/utilies/map_of_all_app.dart';

class DataNameWithTextFieldAndUploadImagePermissionsAdminSun extends StatelessWidget {
  const DataNameWithTextFieldAndUploadImagePermissionsAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    return isMobile ?
    MobileOfDataContainerInListDataFirstScreenPermissionsAdminSun()
        :
    WebOfDataContainerInListDataFirstScreenPermissionsAdminSun()
    ;
  }
}