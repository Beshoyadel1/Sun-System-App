import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_on_the_way_emp/screens/part_left_screen/container_contact_with_customer_order_details_on_the_way_emp.dart';
import '../../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_on_the_way_emp/screens/part_left_screen/data_time_line_tile_order_details_on_the_way_emp.dart';
import '../../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/first_screen_mobility_requests_emp.dart';
import '../../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../features/dashboard/Admin/service_settings/first_screen_service_settings/screens/container_return_to_page_setting.dart';


class DataPartLeftScreenOrderDetailsOnTheWayEmp extends StatelessWidget {
  const DataPartLeftScreenOrderDetailsOnTheWayEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        ContainerReturnToPageSetting(
          text: AppLanguageKeys.back,
          onTap: (){
              Navigator.pop(context);
              Navigator.of(context).push(
                NavigateToPageWidget(FirstScreenMobilityRequestsEmp()),
              );
          },
        ),
        ContainerContactWithCustomerOrderDetailsOnTheWayEmp(),
        DataTimeLineTileOrderDetailsOnTheWayEmp()
    ],
    );
  }
}