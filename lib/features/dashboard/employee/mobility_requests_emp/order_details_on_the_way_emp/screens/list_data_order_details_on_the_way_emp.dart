import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/employee/mobility_requests_emp/order_details_on_the_way_emp/screens/data_container_in_list_order_details_on_the_way_emp.dart';
import '../../../../../../core/theming/colors.dart';

class ListDataOrderDetailsOnTheWayEmp extends StatelessWidget {
  const ListDataOrderDetailsOnTheWayEmp({super.key});

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
      child: DataContainerInListOrderDetailsOnTheWayEmp(),
    );
  }
}
