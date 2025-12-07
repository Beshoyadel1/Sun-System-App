import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/data_container_data_order_in_mobility_requests_emp.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerDataOrderInMobilityRequestsEmp extends StatelessWidget {
  final double? widthMobile,widthTabletCustom;
  final void Function()? onTap;
  final bool? isAccept,isReject,isNewOrder,isTruck;
  const ContainerDataOrderInMobilityRequestsEmp({
    super.key,
    this.widthMobile,
    this.widthTabletCustom,
    this.onTap,
    this.isAccept=false,
    this.isReject=false,
    this.isNewOrder=false,
    this.isTruck=false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.greyColor.withOpacity(0.3)
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: DataContainerDataOrderInMobilityRequestsEmp(
        widthMobile: widthMobile,
        widthTabletCustom:widthTabletCustom,
        onTap:onTap,
        isTruck: isTruck,
        isAccept: isAccept,
        isNewOrder: isNewOrder,
        isReject: isReject,
      ),
    );
  }
}