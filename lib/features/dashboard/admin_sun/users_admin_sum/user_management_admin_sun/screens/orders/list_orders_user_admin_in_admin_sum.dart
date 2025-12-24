import 'package:flutter/cupertino.dart';
import '../../../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_new_order_emp/order_details_new_order_emp.dart';
import '../../../../../../../../../features/dashboard/admin_sun/users_admin_sum/user_management_admin_sun/screens/orders/container_list_orders_user_admin_in_admin_sum.dart';

class ListOrdersUserAdminInAdminSum extends StatelessWidget {
  const ListOrdersUserAdminInAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerListOrdersUserAdminInAdminSum(
              onTap: (){
                Navigator.of(context).push(
                  NavigateToPageWidget(OrderDetailsNewOrderEmp()),
                );
              }
          ),
          ContainerListOrdersUserAdminInAdminSum(
              onTap: (){
                Navigator.of(context).push(
                  NavigateToPageWidget(OrderDetailsNewOrderEmp()),
                );
              }
          ),
          ContainerListOrdersUserAdminInAdminSum(
              onTap: (){
                Navigator.of(context).push(
                  NavigateToPageWidget(OrderDetailsNewOrderEmp()),
                );
              }
          ),
          ContainerListOrdersUserAdminInAdminSum(
              onTap: (){
                Navigator.of(context).push(
                  NavigateToPageWidget(OrderDetailsNewOrderEmp()),
                );
              }
          ),
          ContainerListOrdersUserAdminInAdminSum(
              onTap: (){
                Navigator.of(context).push(
                  NavigateToPageWidget(OrderDetailsNewOrderEmp()),
                );
              }
          ),
        ],
      ),
    );
  }
}
