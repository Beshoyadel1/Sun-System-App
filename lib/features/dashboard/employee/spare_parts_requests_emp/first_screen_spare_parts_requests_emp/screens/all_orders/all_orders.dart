import 'package:flutter/cupertino.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/order_details_emp.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/all_orders/container_data_order_in_spare_parts_requests_emp.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/all_orders/row_search_model_with_filer_in_spare_parts_requests_emp.dart';

class AllOrders extends StatelessWidget {
  const AllOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          RowSearchModelWithFilerInSparePartsRequestsEmp(),
          ContainerDataOrderInSparePartsRequestsEmp(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsEmp()),
              );
            }
          ),
          ContainerDataOrderInSparePartsRequestsEmp(
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(
                  NavigateToPageWidget(OrderDetailsEmp()),
                );
              }
          ),
          ContainerDataOrderInSparePartsRequestsEmp(
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(
                  NavigateToPageWidget(OrderDetailsEmp()),
                );
              }
          ),
          ContainerDataOrderInSparePartsRequestsEmp(
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(
                  NavigateToPageWidget(OrderDetailsEmp()),
                );
              }
          ),
        ],
      ),
    );
  }
}