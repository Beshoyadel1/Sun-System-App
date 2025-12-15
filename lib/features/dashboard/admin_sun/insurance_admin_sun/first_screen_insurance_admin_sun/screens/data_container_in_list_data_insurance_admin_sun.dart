import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/insurance_admin_sun/first_screen_insurance_admin_sun/screens/all_first_screen_insurance_admin_sun_list/all_first_screen_insurance_admin_sun_list.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/title_with_sub_title_in_first_screen_spare_parts_requests_emp.dart';


class DataContainerInListDataInsuranceAdminSun extends StatelessWidget {
  const DataContainerInListDataInsuranceAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 30,
        children: [
          TitleWithSubTitleInFirstScreenSparePartsRequestsEmp(
            title: 'شركات التأمين ',
            subTitle:'جميع الشركات التأمين الخاصة بالنظام',
          ),
          AllFirstScreenInsuranceAdminSunList()
        ],
      ),
    );
  }
}
