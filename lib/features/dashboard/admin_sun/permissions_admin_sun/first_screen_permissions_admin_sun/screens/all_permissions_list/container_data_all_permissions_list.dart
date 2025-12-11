import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/permissions_admin_sun/first_screen_permissions_admin_sun/screens/all_permissions_list/data_container_data_all_permissions_list.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerDataAllPermissionsList extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? numberText1,imageSrc2,title2,subTitle2,title3,subTitle3,title4;
  const ContainerDataAllPermissionsList({
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
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.greyColor.withOpacity(0.3)
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: DataContainerDataAllPermissionsList(
        widthMobile: widthMobile,
        onTap: onTap,
        numberText1:numberText1,
        imageSrc2:imageSrc2,
        subTitle2:subTitle2,
        title2:title2,
        title3:title3,
        subTitle3:subTitle3,
        title4:title4,
      ),
    );
  }
}