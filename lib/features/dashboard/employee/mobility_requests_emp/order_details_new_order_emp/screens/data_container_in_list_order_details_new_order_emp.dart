import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_new_order_emp/sub/dialog_reject_order/dialog_reject_order.dart';
import '../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_new_order_emp/screens/part_left_screen/container_contact_with_customer_order_details_new_order_emp.dart';
import '../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_new_order_emp/screens/part_left_screen/data_time_line_tile_order_details_new_order_emp.dart';
import '../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/container_data_order_in_mobility_requests_emp.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/screens/title_with_sub_title_in_order_details_emp.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_details_car/container_sold.dart';

class DataContainerInListOrderDetailsNewOrderEmp extends StatelessWidget {
  const DataContainerInListOrderDetailsNewOrderEmp({super.key});
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
          ContainerDataOrderInMobilityRequestsEmp(
            widthMobile: 1300,
            widthTabletCustom:1600,
            isNewOrder4: true,
            onTap: (){},
          ),
          if(isMobile)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 30,
              children: [
                ContainerContactWithCustomerOrderDetailsNewOrderEmp(),
                DataTimeLineTileOrderDetailsNewOrderEmp()
              ],
            ),
          Row(
            spacing: 20,
            children: [
              ContainerSold(
                text: AppLanguageKeys.requestAccepted,
                backGroundColor: AppColors.greenColor,
                onTap:(){
                  // Navigator.pop(context);
                  // Navigator.of(context).push(
                  //   NavigateToPageWidget(OrderReceivedEmp()),
                  // );
                },
              ),
              ContainerSold(
                text: AppLanguageKeys.rejectRequest,
                backGroundColor: AppColors.redColor,
                onTap:(){
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) => const DialogRejectOrder(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
