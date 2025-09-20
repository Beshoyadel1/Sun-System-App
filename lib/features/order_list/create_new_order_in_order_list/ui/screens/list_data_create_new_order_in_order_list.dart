import 'package:flutter/cupertino.dart';
import '../../../../../../features/order_list/create_new_order_in_order_list/ui/screens/create_new_order/container_create_new_order.dart';
import '../../../../../../features/order_list/create_new_order_in_order_list/ui/screens/last_button_in_create_new_order_in_order_list.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/container_notes.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_service_bill_payment_in_service_request/container_service.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_address/container_address.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_contact_a_maintenance_representative/container_contact_a_maintenance_representative.dart';

class ListDataCreateNewOrderInOrderList extends StatelessWidget {
  const ListDataCreateNewOrderInOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        ContainerCreateNewOrder(),
        ContainerServiceBillPaymentInServiceRequest(),
        ContainerNotesPaymentInServiceRequest(),
        ContainerAddress(),
        ContainerContactAMaintenanceRepresentative(),
        LastButtonInCreateNewOrderInOrderList()
      ],
    );
  }
}
