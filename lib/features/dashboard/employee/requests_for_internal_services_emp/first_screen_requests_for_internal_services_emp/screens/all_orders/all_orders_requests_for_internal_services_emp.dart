import 'package:flutter/cupertino.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../features/dashboard/employee/requests_for_internal_services_emp/first_screen_requests_for_internal_services_emp/screens/all_orders/container_data_order_in_requests_for_internal_services_emp.dart';
import '../../../../../../../features/dashboard/employee/requests_for_internal_services_emp/first_screen_requests_for_internal_services_emp/screens/all_orders/row_search_model_with_filer_in_requests_for_internal_services_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_order_received_emp/order_details_order_received_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_under_service_emp/order_details_under_service_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_on_the_way_emp/order_details_on_the_way_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_new_order_emp/order_details_new_order_emp.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';

class AllOrdersRequestsForInternalServicesEmp extends StatelessWidget {
  const AllOrdersRequestsForInternalServicesEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          RowSearchModelWithFilerInRequestsForInternalServicesEmp(),
          ContainerDataOrderInRequestsForInternalServicesEmp(
            isTruck4: true,
            imageSrc2: AppImageKeys.service33,
            title2: 'خدمات داخلية',
            subTitle2: 'صيانة واصلاج',
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsOnTheWayEmp()),
              );
            }
          ),
          ContainerDataOrderInRequestsForInternalServicesEmp(
            isAccept4: true,
              imageSrc2: AppImageKeys.service33,
              title2: 'خدمات داخلية',
              subTitle2: 'صيانة واصلاج',
              onTap: (){

              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsOrderReceivedEmp()),
              );
            }
          ),
          ContainerDataOrderInRequestsForInternalServicesEmp(
            isReject4: true,
              imageSrc2: AppImageKeys.service33,
              title2: 'خدمات داخلية',
              subTitle2: 'صيانة واصلاج',
              onTap: (){
              //
              // Navigator.of(context).push(
              //   NavigateToPageWidget(OrderDetailsMobilityRequestsEmp()),
              // );
            }
          ),
          ContainerDataOrderInRequestsForInternalServicesEmp(
            isNewOrder4: true,
              imageSrc2: AppImageKeys.service33,
              title2: 'خدمات داخلية',
              subTitle2: 'صيانة واصلاج',
              onTap: (){

              Navigator.of(context).push(
                NavigateToPageWidget(OrderDetailsNewOrderEmp()),
              );
            }
          ),
          ContainerDataOrderInRequestsForInternalServicesEmp(
              imageSrc2: AppImageKeys.service33,
              title2: 'خدمات داخلية',
              subTitle2: 'صيانة واصلاج',
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