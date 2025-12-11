import 'package:flutter/cupertino.dart';
import '../../../../../../../../features/dashboard/admin_sun/permissions_admin_sun/add_permissions_admin_sun/screens/select_permissions/web_as_part_user_select_permissions_admin_sun.dart';
import '../../../../../../../../features/dashboard/admin_sun/permissions_admin_sun/add_permissions_admin_sun/screens/select_permissions/mobile_as_part_user_select_permissions_admin_sun.dart';
import '../../../../../../../../core/utilies/map_of_all_app.dart';

class PartUserSelectPermissionsAdminSun extends StatelessWidget {
  const PartUserSelectPermissionsAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    return isMobile ?
    MobileAsPartUserSelectPermissionsAdminSun()
        :
    WebAsPartUserSelectPermissionsAdminSun()
    ;
  }
}
