import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/sun_packages_management_admin_sun/sun_packages_management_admin_sun/screens/first_data_text_screen_package_sun.dart';
import '../../../../../../features/dashboard/admin_sun/sun_packages_management_admin_sun/sun_packages_management_admin_sun/screens/other_data_sun_packages_management_admin_sun.dart';

class DataContainerInSunPackagesManagementAdminSun extends StatelessWidget {
  const DataContainerInSunPackagesManagementAdminSun({super.key});
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
          FirstDataTextScreenPackageSun(),
          OtherDataSunPackagesManagementAdminSun()
        ],
      ),
    );
  }
}
