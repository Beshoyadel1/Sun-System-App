import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/car_auction_emp/screens/all_cars/mobile_data_container_data_car_in_car_auction_emp.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/car_auction_emp/screens/all_cars/tab_data_container_data_car_in_car_auction_emp.dart';


class DataContainerDataCarInCarAuctionEmp extends StatelessWidget {
  final double? widthMobile;
  const DataContainerDataCarInCarAuctionEmp({
    super.key,
  this.widthMobile
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??900);
    return isMobile?
      MobileDataContainerDataCarInCarAuctionEmp()
    :
    TabDataContainerDataCarInCarAuctionEmp();
  }
}