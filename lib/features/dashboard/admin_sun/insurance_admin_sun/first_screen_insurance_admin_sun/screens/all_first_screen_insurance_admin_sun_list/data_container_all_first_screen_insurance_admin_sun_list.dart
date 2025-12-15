import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/insurance_admin_sun/first_screen_insurance_admin_sun/screens/all_first_screen_insurance_admin_sun_list/mobile_data_container_data_all_first_screen_insurance_admin_sun_list.dart';
import '../../../../../../../features/dashboard/admin_sun/insurance_admin_sun/first_screen_insurance_admin_sun/screens/all_first_screen_insurance_admin_sun_list/tab_data_container_data_order_in_all_first_screen_insurance_admin_sun_list.dart';

class DataContainerAllFirstScreenInsuranceAdminSunList extends StatelessWidget {
  final double? widthMobile;
  final String? imageSrc1,title1,subTitle1,title2,subTitle2,title3,subTitle3,title4,subTitle4,title5,subTitle5;
  const DataContainerAllFirstScreenInsuranceAdminSunList({
    super.key,
    this.widthMobile,
    this.imageSrc1,
    this.title1,
    this.subTitle1,
    this.title2,
    this.subTitle2,
    this.subTitle3,
    this.title3,
    this.title4,
    this.subTitle4,
    this.title5,
    this.subTitle5
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??1120);
    return isMobile?
    MobileDataContainerDataAllFirstScreenInsuranceAdminSunList(
      imageSrc1:imageSrc1,
      title1:title1,
      subTitle1:subTitle1,
      title2:title2,
      subTitle2:subTitle2,
      title3:title3,
      subTitle3:subTitle3,
      title4:title4,
      subTitle4:subTitle4,
      title5:title5,
      subTitle5:subTitle5,
    )
    :
    TabDataContainerDataOrderInAllFirstScreenInsuranceAdminSunList(
      imageSrc1:imageSrc1,
      title1:title1,
      subTitle1:subTitle1,
      title2:title2,
      subTitle2:subTitle2,
      title3:title3,
      subTitle3:subTitle3,
      title4:title4,
      subTitle4:subTitle4,
      title5:title5,
      subTitle5:subTitle5,
    );
  }
}