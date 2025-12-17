import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/custom_widget/list_data_in_part_car_billing_details_widget.dart';

class ListDataInPartCarBillingDetails extends StatelessWidget {
  const ListDataInPartCarBillingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        ListDataInPartCarBillingDetailsWidget(),
        ListDataInPartCarBillingDetailsWidget(
          name: 'مركز صيانة واصلاح',
        ),
        ListDataInPartCarBillingDetailsWidget(
          name: 'نظافة وغسيل',
        ),
        ListDataInPartCarBillingDetailsWidget(
          name: 'الطرق السريعة',
        ),
        ListDataInPartCarBillingDetailsWidget(
          name: 'نظافة وغسيل',
        ),
      ],
    );
  }
}
