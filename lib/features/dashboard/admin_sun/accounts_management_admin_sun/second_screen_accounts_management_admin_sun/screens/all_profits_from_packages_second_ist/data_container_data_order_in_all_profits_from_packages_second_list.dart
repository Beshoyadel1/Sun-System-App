import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/second_screen_accounts_management_admin_sun/screens/all_profits_from_packages_second_ist/mobile_data_container_data_order_in_all_profits_from_packages_second_list.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/second_screen_accounts_management_admin_sun/screens/all_profits_from_packages_second_ist/tab_custom_data_container_data_order_in_all_profits_from_packages_second_list.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/second_screen_accounts_management_admin_sun/screens/all_profits_from_packages_second_ist/tab_data_container_data_order_in_all_profits_from_packages_second_list.dart';

class DataContainerDataOrderInAllProfitsFromPackagesSecondList extends StatelessWidget {
  final double? widthMobile,widthTabletCustom;
  final void Function()? onTap;
  final bool? isAccept4,isReject4,isNewOrder4,isTruck4,isPaidSuccess4;
  final String? numberText1,title2,subTitle2,title3,subTitle3,subTitle4,price5,text5;
  const DataContainerDataOrderInAllProfitsFromPackagesSecondList({
    super.key,
    this.widthMobile,
    this.widthTabletCustom,
    this.onTap,
    this.numberText1,
    this.title2,
    this.subTitle2,
    this.subTitle3,
    this.title3,
    this.isTruck4=false,
    this.isAccept4=false,
    this.isNewOrder4=false,
    this.isPaidSuccess4=false,
    this.isReject4=false,
    this.subTitle4,
    this.price5,
    this.text5
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??900);
    bool isTabletCustom = size.width > (widthMobile??900) && size.width <= (widthTabletCustom??1200);

    return isMobile?
    MobileDataContainerDataOrderInAllProfitsFromPackagesSecondList(
      numberText1:numberText1,
      subTitle2:subTitle2,
      title2:title2,
      subTitle3:subTitle3,
      title3:title3,
      isAccept4: isAccept4,
      isNewOrder4: isNewOrder4,
      isPaidSuccess4:isPaidSuccess4,
      isReject4:isReject4,
      isTruck4:isTruck4,
      subTitle4:subTitle4,
      text5: text5,
      price5: price5,
      onTap:onTap ,
    )
    :
    isTabletCustom?
    TabCustomDataContainerDataOrderInAllProfitsFromPackagesSecondList(
      numberText1:numberText1,
      subTitle2:subTitle2,
      title2:title2,
      subTitle3:subTitle3,
      title3:title3,
      isAccept4: isAccept4,
      isNewOrder4: isNewOrder4,
      isPaidSuccess4:isPaidSuccess4,
      isReject4:isReject4,
      isTruck4:isTruck4,
      subTitle4:subTitle4,
      text5: text5,
      price5: price5,
      onTap:onTap ,
    )
        :
    TabDataContainerDataOrderInAllProfitsFromPackagesSecondList(
      numberText1:numberText1,
      subTitle2:subTitle2,
      title2:title2,
      subTitle3:subTitle3,
      title3:title3,
      isAccept4: isAccept4,
      isNewOrder4: isNewOrder4,
      isPaidSuccess4:isPaidSuccess4,
      isReject4:isReject4,
      isTruck4:isTruck4,
      subTitle4:subTitle4,
      text5: text5,
      price5: price5,
      onTap:onTap ,
    );
  }
}