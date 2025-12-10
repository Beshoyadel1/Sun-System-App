import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/rates_admin_sun/first_screen_rates_admin_sun/screens/all_rates_list/all_rates_list.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/title_with_sub_title_in_first_screen_spare_parts_requests_emp.dart';


class DataContainerInListDataFirstScreenRatesAdminSun extends StatelessWidget {
  const DataContainerInListDataFirstScreenRatesAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 30,
        children: [
          TitleWithSubTitleInFirstScreenSparePartsRequestsEmp(
            title: 'التقييمات لمراكز الخدمة',
            subTitle:'يمكنك لدخول التفاصيل لكل منشأة ',
          ),
          AllRatesList()
        ],
      ),
    );
  }
}
