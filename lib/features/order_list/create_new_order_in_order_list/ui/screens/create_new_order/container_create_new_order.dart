import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/features/order_list/create_new_order_in_order_list/ui/screens/create_new_order/first_row_container_on_the_way.dart';
import 'package:sun_system_app/features/order_list/create_new_order_in_order_list/ui/screens/create_new_order/last_row_container_on_the_way.dart';
import 'package:sun_system_app/features/order_list/create_new_order_in_order_list/ui/screens/create_new_order/row_lines_container_on_the_way.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_on_the_way/first_row_container_on_the_way.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_on_the_way/last_row_container_on_the_way.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_on_the_way/row_lines_container_on_the_way.dart';

class ContainerCreateNewOrder extends StatelessWidget {
  const ContainerCreateNewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.transparent
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        spacing: 10,
        children: [
          FirstRowContainerCreateNewOrder(),
          RowLinesContainerCreateNewOrder(),
          LastRowContainerCreateNewOrder(),
        ],
      ),
    );
  }
}
