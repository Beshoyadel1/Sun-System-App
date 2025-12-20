import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/facility_data_in_all_companies_admin_sum/last_two_container_facility_data_in_all_companies_admin_sum.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/facility_data_in_all_companies_admin_sum/data_text_field_with_text_in_facility_data_in_all_companies_admin_sum.dart';

class FacilityDataInAllCompaniesAdminSum extends StatelessWidget {
  const FacilityDataInAllCompaniesAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          SizedBox(
            height: 20,
          ),
          DataTextFieldWithTextInFacilityDataInAllCompaniesAdminSum(),
          LastTwoContainerFacilityDataInAllCompaniesAdminSum()
        ],
      ),
    );
  }
}
