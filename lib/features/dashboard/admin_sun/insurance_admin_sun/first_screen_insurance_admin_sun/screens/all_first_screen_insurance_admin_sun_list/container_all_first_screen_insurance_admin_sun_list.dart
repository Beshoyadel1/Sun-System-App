import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/insurance_admin_sun/first_screen_insurance_admin_sun/screens/all_first_screen_insurance_admin_sun_list/data_container_all_first_screen_insurance_admin_sun_list.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerAllFirstScreenInsuranceAdminSunList extends StatelessWidget {
  final double? widthMobile;
  final String? imageSrc1,title1,subTitle1,title2,subTitle2,title3,subTitle3,title4,subTitle4,title5,subTitle5;
  const ContainerAllFirstScreenInsuranceAdminSunList({
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
      child: DataContainerAllFirstScreenInsuranceAdminSunList(
        widthMobile: widthMobile,
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
      ),
    );
  }
}