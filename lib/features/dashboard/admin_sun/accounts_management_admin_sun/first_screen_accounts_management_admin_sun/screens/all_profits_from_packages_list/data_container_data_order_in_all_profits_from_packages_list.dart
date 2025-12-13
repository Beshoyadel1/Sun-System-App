import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/first_screen_accounts_management_admin_sun/screens/all_profits_from_packages_list/mobile_data_container_data_order_in_all_profits_from_packages_list.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/first_screen_accounts_management_admin_sun/screens/all_profits_from_packages_list/tab_custom_data_container_data_order_in_all_profits_from_packages_list.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/first_screen_accounts_management_admin_sun/screens/all_profits_from_packages_list/tab_data_container_data_order_in_all_profits_from_packages_list.dart';

class DataContainerDataOrderInAllProfitsFromPackagesList extends StatelessWidget {
  final double? widthMobile,widthTabletCustom;
  final bool? isAccept3,isReject3,isNewOrder3,isTruck3,isPaidSuccess3;
  final String? numberText1,imageSrc2,title2,title4,subTitle4,price5,text5;

  const DataContainerDataOrderInAllProfitsFromPackagesList({
    super.key,
    this.widthMobile,
    this.widthTabletCustom,
    this.numberText1,
    this.imageSrc2,
    this.title2,
    this.isAccept3=false,
    this.isReject3=false,
    this.isNewOrder3=false,
    this.isTruck3=false,
    this.isPaidSuccess3=false,
    this.title4,
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
    MobileDataContainerDataOrderInAllProfitsFromPackagesList(
      numberText1:numberText1,
      imageSrc2:imageSrc2,
      title2:title2,
      isAccept3: isAccept3,
      isNewOrder3: isNewOrder3,
      isPaidSuccess3:isPaidSuccess3,
      isReject3:isReject3,
      isTruck3:isTruck3,
      title4: title4,
      subTitle4:subTitle4,
      text5: text5,
      price5: price5,
    )
    :
    isTabletCustom?
    TabCustomDataContainerDataOrderInAllProfitsFromPackagesList(
      numberText1:numberText1,
      imageSrc2:imageSrc2,
      title2:title2,
      isAccept3: isAccept3,
      isNewOrder3: isNewOrder3,
      isPaidSuccess3:isPaidSuccess3,
      isReject3:isReject3,
      isTruck3:isTruck3,
      title4: title4,
      subTitle4:subTitle4,
      text5: text5,
      price5: price5,
    )
        :
    TabDataContainerDataOrderInAllProfitsFromPackagesList(
      numberText1:numberText1,
      imageSrc2:imageSrc2,
      title2:title2,
      isAccept3: isAccept3,
      isNewOrder3: isNewOrder3,
      isPaidSuccess3:isPaidSuccess3,
      isReject3:isReject3,
      isTruck3:isTruck3,
      title4: title4,
      subTitle4:subTitle4,
      text5: text5,
      price5: price5,
    );
  }
}