import 'package:flutter/cupertino.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/car_auction_admin_sun.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/first_screen_car_auction_admin_sun/screens/all_first_screen_car_auction_list/container_all_first_screen_car_auction_list.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/first_screen_car_auction_admin_sun/screens/all_first_screen_car_auction_list/row_search_model_with_filer_in_all_first_screen_car_auction_list.dart';

class AllFirstScreenCarAuctionList extends StatelessWidget {
  const AllFirstScreenCarAuctionList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowSearchModelWithFilerInAllFirstScreenCarAuctionList(),
          ContainerAllFirstScreenCarAuctionList(
            isServiceProvider: true,
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(CarAuctionAdminSun()),
              );
            }
          ),
          ContainerAllFirstScreenCarAuctionList(
              isServiceProvider: true,
              onTap: (){
                Navigator.of(context).push(
                  NavigateToPageWidget(CarAuctionAdminSun()),
                );
              }
          ),
          ContainerAllFirstScreenCarAuctionList(
              isServiceProvider: true,
              onTap: (){
                Navigator.of(context).push(
                  NavigateToPageWidget(CarAuctionAdminSun()),
                );
              }
          ),
          ContainerAllFirstScreenCarAuctionList(
              isServiceProvider: true,
              onTap: (){
                Navigator.of(context).push(
                  NavigateToPageWidget(CarAuctionAdminSun()),
                );
              }
          ),
          ContainerAllFirstScreenCarAuctionList(
              isServiceProvider: true,
              onTap: (){
                Navigator.of(context).push(
                  NavigateToPageWidget(CarAuctionAdminSun()),
                );
              }
          ),
        ],
      ),
    );
  }
}