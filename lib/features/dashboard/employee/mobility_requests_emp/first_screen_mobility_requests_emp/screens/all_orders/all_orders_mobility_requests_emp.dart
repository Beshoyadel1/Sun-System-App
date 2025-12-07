import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_order_received_emp/order_details_order_received_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_under_service_emp/order_details_under_service_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_on_the_way_emp/order_details_on_the_way_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_new_order_emp/order_details_new_order_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/container_data_order_in_mobility_requests_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/row_search_model_with_filer_in_mobility_requests_emp.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';

class AllOrdersMobilityRequestsEmp extends StatelessWidget {
  const AllOrdersMobilityRequestsEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          RowSearchModelWithFilerInMobilityRequestsEmp(),
          ContainerDataOrderInMobilityRequestsEmp(
            isTruck: true,
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsOnTheWayEmp()),
              );
            }
          ),
          ContainerDataOrderInMobilityRequestsEmp(
            isAccept: true,
              onTap: (){
              Navigator.pop(context);
              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsOrderReceivedEmp()),
              );
            }
          ),
          ContainerDataOrderInMobilityRequestsEmp(
            isReject: true,
              onTap: (){
              //Navigator.pop(context);
              // Navigator.of(context).push(
              //   NavigateToPageWidget(OrderDetailsMobilityRequestsEmp()),
              // );
            }
          ),
          ContainerDataOrderInMobilityRequestsEmp(
            isNewOrder: true,
              onTap: (){
              Navigator.pop(context);
              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsNewOrderEmp()),
              );
            }
          ),
          ContainerDataOrderInMobilityRequestsEmp(
              onTap: (){
              Navigator.pop(context);
              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsUnderServiceEmp()),
              );
            }
          ),
        ],
      ),
    );
  }
}