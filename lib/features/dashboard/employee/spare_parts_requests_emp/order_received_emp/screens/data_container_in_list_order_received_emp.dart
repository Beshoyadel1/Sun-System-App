import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/all_orders/container_data_order_in_spare_parts_requests_emp.dart';
import '../../../../../../features/Insurance/custom_widget/container_invoice_widget.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_received_emp/screens/part_left_screen/data_time_line_tile_order_received_emp.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/screens/part_left_screen/container_contact_with_customer.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/screens/title_with_sub_title_in_order_details_emp.dart';


class DataContainerInListOrderReceivedEmp extends StatelessWidget {
  const DataContainerInListOrderReceivedEmp({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 950;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          TitleWithSubTitleInOrderDetailsEmp(),
          ContainerDataOrderInSparePartsRequestsEmp(
            widthMobile: 1300,
            widthTabletCustom:1600,
            onTap: (){},
          ),
          ContainerInvoiceWidget(
            priceInsuranceInstallment: '1000',
            priceTaxes: '00.00',
            priceTotal: '1000.00',
          ),
          if(isMobile)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 30,
              children: [
                ContainerContactWithCustomer(),
                DataTimeLineTileOrderReceivedEmp()
              ],
            ),
        ],
      ),
    );
  }
}
