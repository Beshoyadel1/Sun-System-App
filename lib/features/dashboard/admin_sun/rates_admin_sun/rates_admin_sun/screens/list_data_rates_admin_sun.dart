import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/admin_sun/rates_admin_sun/rates_admin_sun/screens/container_review_data_person_design/list_data_container_review_data_person_design_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/rates_admin_sun/rates_admin_sun/screens/first_title_in_list_data_rates_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/rates_admin_sun/rates_admin_sun/screens/list_container_all_rate_service/list_container_all_rate_service_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/rates_admin_sun/rates_admin_sun/screens/title_total_rate_in_list_data_rates_admin_sun.dart';

class ListDataRatesAdminSun extends StatelessWidget {
  const ListDataRatesAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 30,
      children: [
        FirstTitleInListDataRatesAdminSun(),
        ListContainerAllRateServiceAdminSun(),
        TitleTotalRateInListDataRatesAdminSun(),
        ListDataContainerReviewDataPersonDesignAdminSun()
      ],
    );
  }
}
