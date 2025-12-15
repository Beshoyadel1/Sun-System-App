import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/screens/all_cars_admin_sum/mobile_data_container_data_car_in_car_auction_admin_sum.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/screens/all_cars_admin_sum/tab_data_container_data_car_in_car_auction_admin_sum.dart';

class DataContainerDataCarInCarAuctionAdminSum extends StatelessWidget {
  final double? widthMobile;
  const DataContainerDataCarInCarAuctionAdminSum({
    super.key,
  this.widthMobile
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??900);
    return isMobile?
    MobileDataContainerDataCarInCarAuctionAdminSum()
    :
    TabDataContainerDataCarInCarAuctionAdminSum();
  }
}