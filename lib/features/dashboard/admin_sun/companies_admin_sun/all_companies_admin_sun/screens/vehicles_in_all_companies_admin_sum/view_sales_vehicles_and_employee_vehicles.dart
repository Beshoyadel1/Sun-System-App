import 'package:flutter/cupertino.dart';
import '../../../custom_widget/container_view_sales_vehicles_and_employee_vehicles_widget.dart';

class ViewSalesVehiclesAndEmployeeVehicles extends StatelessWidget {
  const ViewSalesVehiclesAndEmployeeVehicles({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1000;
    return isMobile
        ? Column(
          spacing: 10,
          children: [
            ContainerViewSalesVehiclesAndEmployeeVehiclesWidget(),
            ContainerViewSalesVehiclesAndEmployeeVehiclesWidget(),
          ],
        )
        : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          children: [
            Flexible(
              child: ContainerViewSalesVehiclesAndEmployeeVehiclesWidget(),
            ),
            Flexible(
              child: ContainerViewSalesVehiclesAndEmployeeVehiclesWidget(),
            ),
          ],
        );
  }
}
