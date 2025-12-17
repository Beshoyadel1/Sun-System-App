import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_car_billing_details/list_data_in_part_car_billing_details.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_car_billing_details/row_search_model_in_part_car_billing_details.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_car_billing_details/title_container_part_car_billing_details.dart';


class DataContainerPartCarBillingDetails extends StatelessWidget {
  const DataContainerPartCarBillingDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          TitleContainerPartCarBillingDetails(),
          RowSearchModelInPartCarBillingDetails(),
          ListDataInPartCarBillingDetails()
        ],
      ),
    );
  }
}
