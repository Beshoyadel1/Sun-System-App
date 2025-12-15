import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/insurance_admin_sun/second_screen_insurance_admin_sun/screens/all_second_screen_insurance_admin_sun_list/data_container_data_order_in_all_second_screen_insurance_admin_sun_list.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerDataOrderInAllSecondScreenInsuranceAdminSunList extends StatelessWidget {
  final double? widthMobile,widthTabletCustom;
  final void Function()? onTap;
  final bool? isActive,isInActive;
  final String? numberText1,imageSrc2,title2,subTitle2,title3,subTitle3,imageSrc3,title4,subTitle4,title5,subTitle5;
  const ContainerDataOrderInAllSecondScreenInsuranceAdminSunList({
    super.key,
    this.widthMobile,
    this.widthTabletCustom,
    this.onTap,
    this.isActive=false,
    this.isInActive=false,
    this.numberText1,
    this.imageSrc2,
    this.title2,
    this.subTitle2,
    this.subTitle3,
    this.title3,
    this.imageSrc3,
    this.subTitle4,
    this.title4,
    this.subTitle5,
    this.title5,
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
      child: DataContainerDataOrderInAllSecondScreenInsuranceAdminSunList(
        widthMobile: widthMobile,
        widthTabletCustom:widthTabletCustom,
        numberText1:numberText1,
        subTitle2:subTitle2,
        title2:title2,
        imageSrc2:imageSrc2,
        subTitle3:subTitle3,
        title3:title3,
        imageSrc3:imageSrc3 ,
        title4:title4,
        subTitle4:subTitle4,
        subTitle5:subTitle5 ,
        title5:title5,
        isActive:isActive,
        isInActive:isInActive ,
        onTap:onTap ,
      ),
    );
  }
}