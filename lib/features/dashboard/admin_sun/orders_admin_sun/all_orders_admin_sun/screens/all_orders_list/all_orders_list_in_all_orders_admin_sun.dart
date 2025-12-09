import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/orders_admin_sun/all_orders_admin_sun/screens/all_orders_list/container_data_order_in_all_orders_admin_sun.dart';
import '../../../../../../../features/dashboard/admin_sun/orders_admin_sun/all_orders_admin_sun/screens/all_orders_list/row_search_model_with_filer_in_all_orders_admin_sun.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_order_received_emp/order_details_order_received_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_under_service_emp/order_details_under_service_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_on_the_way_emp/order_details_on_the_way_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_new_order_emp/order_details_new_order_emp.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';

class AllOrdersListInAllOrdersAdminSun extends StatelessWidget {
  const AllOrdersListInAllOrdersAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          RowSearchModelWithFilerInAllOrdersAdminSun(),
          ContainerDataOrderInAllOrdersAdminSun(
            isTruck4: true,
            onTap: (){

              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsOnTheWayEmp()),
              );
            }
          ),
          ContainerDataOrderInAllOrdersAdminSun(
            isAccept4: true,
              onTap: (){

              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsOrderReceivedEmp()),
              );
            }
          ),
          ContainerDataOrderInAllOrdersAdminSun(
            isReject4: true,
              onTap: (){
              //
              // Navigator.of(context).push(
              //   NavigateToPageWidget(OrderDetailsMobilityRequestsEmp()),
              // );
            }
          ),
          ContainerDataOrderInAllOrdersAdminSun(
            isNewOrder4: true,
              onTap: (){

              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsNewOrderEmp()),
              );
            }
          ),
          ContainerDataOrderInAllOrdersAdminSun(
              onTap: (){

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