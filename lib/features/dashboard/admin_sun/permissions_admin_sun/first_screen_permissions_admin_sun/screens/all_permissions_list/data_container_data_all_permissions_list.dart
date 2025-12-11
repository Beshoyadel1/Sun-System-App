import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/permissions_admin_sun/first_screen_permissions_admin_sun/screens/all_permissions_list/mobile_data_container_data_all_permissions_list.dart';
import '../../../../../../../features/dashboard/admin_sun/permissions_admin_sun/first_screen_permissions_admin_sun/screens/all_permissions_list/tab_data_container_data_order_in_all_permissions_list.dart';

class DataContainerDataAllPermissionsList extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? numberText1,imageSrc2,title2,subTitle2,title3,subTitle3,title4;
  const DataContainerDataAllPermissionsList({
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
    MobileDataContainerDataAllPermissionsList(
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
    TabDataContainerDataOrderInAllPermissionsList(
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