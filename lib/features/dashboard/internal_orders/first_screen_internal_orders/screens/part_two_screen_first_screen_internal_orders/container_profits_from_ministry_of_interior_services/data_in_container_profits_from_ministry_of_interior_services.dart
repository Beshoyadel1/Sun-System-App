import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/internal_orders/first_screen_internal_orders/screens/part_two_screen_first_screen_internal_orders/container_profits_from_ministry_of_interior_services/first_row_in_data_in_container_profits_from_ministry_of_interior_services.dart';
import '../../../../../../../features/dashboard/internal_orders/first_screen_internal_orders/screens/part_two_screen_first_screen_internal_orders/container_profits_from_ministry_of_interior_services/second_row_in_data_in_container_profits_from_ministry_of_interior_services.dart';

class DataInContainerProfitsFromMinistryOfInteriorServices extends StatelessWidget {
  const DataInContainerProfitsFromMinistryOfInteriorServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FirstRowInDataInContainerProfitsFromMinistryOfInteriorServices(),
        SecondRowInDataInContainerProfitsFromMinistryOfInteriorServices()
      ],
    );
  }
}
