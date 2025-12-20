import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/facility_data_in_all_service_provider_sum/last_two_container_active_and_close_facility_data_in_all_service_provider_sum.dart';
import '../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/facility_data_in_all_service_provider_sum/two_container_facility_data_in_all_service_provider_sum.dart';
import '../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/facility_data_in_all_service_provider_sum/data_text_field_with_text_in_facility_data_in_all_service_provider_sum.dart';

class FacilityDataInAllServiceProviderSum extends StatelessWidget {
  const FacilityDataInAllServiceProviderSum({super.key});

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
          DataTextFieldWithTextInFacilityDataInAllServiceProviderSum(),
          TwoContainerFacilityDataInAllServiceProviderSum(),
          LastTwoContainerActiveAndCloseFacilityDataInAllServiceProviderSum(),
        ],
      ),
    );
  }
}
