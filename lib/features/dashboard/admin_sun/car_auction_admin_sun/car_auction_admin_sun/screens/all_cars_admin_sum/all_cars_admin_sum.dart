import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/screens/all_cars_admin_sum/container_data_car_in_car_auction_admin_sum.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/screens/all_cars_admin_sum/row_search_model_with_filer_in_car_auction_admin_sum.dart';

class AllCarsAdminSum extends StatelessWidget {
  const AllCarsAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          RowSearchModelWithFilerInCarAuctionAdminSum(),
          ContainerDataCarInCarAuctionAdminSum(),
          ContainerDataCarInCarAuctionAdminSum(),
          ContainerDataCarInCarAuctionAdminSum(),
          ContainerDataCarInCarAuctionAdminSum(),
        ],
      ),
    );
  }
}