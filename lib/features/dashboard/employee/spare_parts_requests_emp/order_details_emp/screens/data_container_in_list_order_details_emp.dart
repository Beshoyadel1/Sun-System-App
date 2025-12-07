import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_received_emp/order_received_emp.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/screens/part_left_screen/container_contact_with_customer.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/screens/part_left_screen/data_time_line_tile.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/all_orders/container_data_order_in_spare_parts_requests_emp.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/screens/title_with_sub_title_in_order_details_emp.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_details_car/container_sold.dart';


class DataContainerInListOrderDetailsEmp extends StatelessWidget {
  const DataContainerInListOrderDetailsEmp({super.key});
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
          if(isMobile)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 30,
              children: [
                ContainerContactWithCustomer(),
                DataTimeLineTile()
              ],
            ),
          ContainerSold(
            text: AppLanguageKeys.orderDelivery,
            backGroundColor: AppColors.greenColor,
            onTap:(){
              Navigator.pop(context);
              Navigator.of(context).push(
                NavigateToPageWidget(OrderReceivedEmp()),
              );
            },
          ),
        ],
      ),
    );
  }
}
