import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/all_orders/mobile_data_container_data_order_in_spare_parts_requests_emp.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/all_orders/tab_custom_data_container_data_order_in_spare_parts_requests_emp.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/all_orders/tab_data_container_data_order_in_spare_parts_requests_emp.dart';


class DataContainerDataOrderInSparePartsRequestsEmp extends StatelessWidget {
  final double? widthMobile,widthTabletCustom;
  final void Function()? onTap;
  const DataContainerDataOrderInSparePartsRequestsEmp({
    super.key,
    this.widthMobile,
    this.widthTabletCustom,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??900);
    bool isTabletCustom = size.width > (widthMobile??900) && size.width <= (widthTabletCustom??1200);

    return isMobile?
    MobileDataContainerDataOrderInSparePartsRequestsEmp(
      onTap: onTap,
    )
    :
    isTabletCustom?
    TabCustomDataContainerDataOrderInSparePartsRequestsEmp(
      onTap: onTap,
    )
        :
    TabDataContainerDataOrderInSparePartsRequestsEmp(
      onTap: onTap,
    );
  }
}