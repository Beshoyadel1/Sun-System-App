import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/login_admin_sun/login_admin_sun/screens/data_login/container_logo_sun_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/login_admin_sun/login_admin_sun/screens/data_login/data_user_enter_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/login_admin_sun/login_admin_sun/screens/data_login/title_with_sub_title_admin_sun.dart';

class DataContainerInListDataLoginAdminSun extends StatelessWidget {
  const DataContainerInListDataLoginAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 940;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ContainerLogoSunAdminSun(),
          TitleWithSubTitleAdminSun(),
          DataUserEnterAdminSun(),
        ],
      ),
    );
  }
}
