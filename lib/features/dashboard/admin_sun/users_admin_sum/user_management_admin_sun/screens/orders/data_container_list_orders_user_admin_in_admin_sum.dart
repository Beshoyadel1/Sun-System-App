import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/users_admin_sum/user_management_admin_sun/screens/orders/mobile_data_container_list_orders_user_admin_in_admin_sum.dart';
import '../../../../../../../../../features/dashboard/admin_sun/users_admin_sum/user_management_admin_sun/screens/orders/tab_custom_data_container_list_orders_user_admin_in_admin_sum.dart';
import '../../../../../../../../../features/dashboard/admin_sun/users_admin_sum/user_management_admin_sun/screens/orders/tab_data_container_list_orders_user_admin_in_admin_sum.dart';

class DataContainerListOrdersUserAdminInAdminSum extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? imageSrc1,
      title1,
      title2,
      subTitle2,
      imageSrc2,
      imageSrc3,
      title3,
      subTitle3,
      subTitle5,
      title5,
      text6;

  const DataContainerListOrdersUserAdminInAdminSum({
    super.key,
    this.widthMobile,
    this.onTap,
    this.imageSrc1,
    this.title1,
    this.title2,
    this.subTitle2,
    this.imageSrc2,
    this.subTitle3,
    this.title3,
    this.imageSrc3,
    this.subTitle5,
    this.title5,
    this.text6,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile ?? 700);
    bool isTabletCustom = size.width > 700 && size.width <= 1100;

    return isTabletCustom
        ? TabCustomDataContainerListOrdersUserAdminInAdminSum(
          onTap: onTap,
          imageSrc1: imageSrc1,
          title1: title1,
          imageSrc2: imageSrc2,
          title2: title2,
          subTitle2: subTitle2,
          title3: title3,
          subTitle3: subTitle3,
          imageSrc3: imageSrc3,
          subTitle5: subTitle5,
          title5: title5,
          text6: text6,
        )
        : isMobile
        ? MobileDataContainerListOrdersUserAdminInAdminSum(
          onTap: onTap,
          imageSrc1: imageSrc1,
          title1: title1,
          imageSrc2: imageSrc2,
          title2: title2,
          subTitle2: subTitle2,
          title3: title3,
          subTitle3: subTitle3,
          imageSrc3: imageSrc3,
          subTitle5: subTitle5,
          title5: title5,
          text6: text6,
        )
        : TabDataContainerListOrdersUserAdminInAdminSum(
          onTap: onTap,
          imageSrc1: imageSrc1,
          title1: title1,
          imageSrc2: imageSrc2,
          title2: title2,
          subTitle2: subTitle2,
          title3: title3,
          subTitle3: subTitle3,
          imageSrc3: imageSrc3,
          subTitle5: subTitle5,
          title5: title5,
          text6: text6,
        );
  }
}
