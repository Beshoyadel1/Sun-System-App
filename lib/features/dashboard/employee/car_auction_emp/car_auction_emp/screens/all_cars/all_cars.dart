import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/car_auction_emp/screens/all_cars/container_data_car_in_car_auction_emp.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/car_auction_emp/screens/all_cars/row_search_model_with_filer_in_car_auction_emp.dart';

class AllCars extends StatelessWidget {
  const AllCars({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          RowSearchModelWithFilerInCarAuctionEmp(),
          ContainerDataCarInCarAuctionEmp(),
          ContainerDataCarInCarAuctionEmp(),
          ContainerDataCarInCarAuctionEmp(),
          ContainerDataCarInCarAuctionEmp(),
        ],
      ),
    );
  }
}