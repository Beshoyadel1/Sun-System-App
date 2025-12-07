import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/mobile_data_container_data_order_in_mobility_requests_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/tab_custom_data_container_data_order_in_mobility_requests_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/tab_data_container_data_order_in_mobility_requests_emp.dart';


class DataContainerDataOrderInMobilityRequestsEmp extends StatelessWidget {
  final double? widthMobile,widthTabletCustom;
  final void Function()? onTap;
  final bool? isAccept,isReject,isNewOrder,isTruck;
  const DataContainerDataOrderInMobilityRequestsEmp({
    super.key,
    this.widthMobile,
    this.widthTabletCustom,
    this.onTap,
    this.isAccept=false,
    this.isReject=false,
    this.isNewOrder=false,
    this.isTruck=false
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??900);
    bool isTabletCustom = size.width > (widthMobile??900) && size.width <= (widthTabletCustom??1200);

    return isMobile?
    MobileDataContainerDataOrderInMobilityRequestsEmp(
      onTap: onTap,
      isTruck: isTruck,
      isAccept: isAccept,
      isNewOrder: isNewOrder,
      isReject:isReject,
    )
    :
    isTabletCustom?
    TabCustomDataContainerDataOrderInMobilityRequestsEmp(
      onTap: onTap,
      isTruck: isTruck,
      isAccept: isAccept,
      isNewOrder: isNewOrder,
      isReject: isReject,
    )
        :
    TabDataContainerDataOrderInMobilityRequestsEmp(
      onTap: onTap,
      isTruck: isTruck,
      isAccept: isAccept,
      isNewOrder: isNewOrder,
      isReject: isReject,
    );
  }
}