import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/first_screen_rates_admin_sun/screens/all_rates_list/mobile_data_container_data_all_rates_list.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/first_screen_rates_admin_sun/screens/all_rates_list/tab_data_container_data_order_in_all_rates_list.dart';

class DataContainerDataAllRatesList extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? numberText1,imageSrc2,title2,subTitle2,title3,subTitle3,title4;
  const DataContainerDataAllRatesList({
    super.key,
    this.widthMobile,
    this.onTap,
    this.numberText1,
    this.imageSrc2,
    this.subTitle2,
    this.title2,
    this.subTitle3,
    this.title3,
    this.title4,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??900);
    return isMobile?
    MobileDataContainerDataAllRatesList(
      onTap: onTap,
      numberText1:numberText1,
      imageSrc2:imageSrc2,
      subTitle2:subTitle2,
      title2:title2,
      title3:title3,
      subTitle3:subTitle3,
      title4:title4,
    )
    :
    TabDataContainerDataOrderInAllRatesList(
      onTap: onTap,
      numberText1:numberText1,
      imageSrc2:imageSrc2,
      subTitle2:subTitle2,
      title2:title2,
      title3:title3,
      subTitle3:subTitle3,
      title4:title4,
    );
  }
}