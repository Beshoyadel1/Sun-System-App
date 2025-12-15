import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/insurance_admin_sun/first_screen_insurance_admin_sun/screens/all_first_screen_insurance_admin_sun_list/container_all_first_screen_insurance_admin_sun_list.dart';

class AllFirstScreenInsuranceAdminSunList extends StatelessWidget {
  const AllFirstScreenInsuranceAdminSunList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerAllFirstScreenInsuranceAdminSunList(),
          ContainerAllFirstScreenInsuranceAdminSunList(),
          ContainerAllFirstScreenInsuranceAdminSunList(),
          ContainerAllFirstScreenInsuranceAdminSunList(),
          ContainerAllFirstScreenInsuranceAdminSunList(),
        ],
      ),
    );
  }
}