import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/first_screen_car_auction_admin_sun/screens/all_first_screen_car_auction_list/mobile_data_container_data_all_first_screen_car_auction_list.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/first_screen_car_auction_admin_sun/screens/all_first_screen_car_auction_list/tab_data_container_data_order_in_all_first_screen_car_auction_list.dart';

class DataContainerAllFirstScreenCarAuctionList extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? imageSrc1,title1,title3,subTitle3,title4,subTitle4;
  final bool? isAccept,isReject,isNewOrder,isTruck,isPaidSuccess,isServiceProvider;
  const DataContainerAllFirstScreenCarAuctionList({
    super.key,
    this.widthMobile,
    this.onTap,
    this.imageSrc1,
    this.title1,
    this.isAccept=false,
    this.isReject=false,
    this.isNewOrder=false,
    this.isTruck=false,
    this.isPaidSuccess=false,
    this.isServiceProvider=false,
    this.subTitle3,
    this.title3,
    this.title4,
    this.subTitle4
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??900);
    return isMobile?
    MobileDataContainerDataAllFirstScreenCarAuctionList(
      onTap: onTap,
      imageSrc1:imageSrc1,
      title1:title1,
      isTruck:isTruck,
      isAccept:isAccept,
      isNewOrder:isNewOrder,
      isReject:isReject,
      isPaidSuccess:isPaidSuccess,
      isServiceProvider:isServiceProvider,
      title3:title3,
      subTitle3:subTitle3,
      title4:title4,
      subTitle4:subTitle4,
    )
    :
    TabDataContainerDataOrderInAllFirstScreenCarAuctionList(
      onTap: onTap,
      imageSrc1:imageSrc1,
      title1:title1,
      isTruck:isTruck,
      isAccept:isAccept,
      isNewOrder:isNewOrder,
      isReject:isReject,
      isPaidSuccess:isPaidSuccess,
      isServiceProvider:isServiceProvider,
      title3:title3,
      subTitle3:subTitle3,
      title4:title4,
      subTitle4:subTitle4,
    );
  }
}