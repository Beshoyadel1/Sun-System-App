import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../features/dashboard/admin_sun/users_admin_sum/user_management_admin_sun/screens/orders/data_container_list_orders_user_admin_in_admin_sum.dart';
import '../../../../../../../../../core/theming/colors.dart';

class ContainerListOrdersUserAdminInAdminSum extends StatelessWidget {
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

  const ContainerListOrdersUserAdminInAdminSum({
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
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: AppColors.greyColor.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: DataContainerListOrdersUserAdminInAdminSum(
        widthMobile: widthMobile,
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
      ),
    );
  }
}
