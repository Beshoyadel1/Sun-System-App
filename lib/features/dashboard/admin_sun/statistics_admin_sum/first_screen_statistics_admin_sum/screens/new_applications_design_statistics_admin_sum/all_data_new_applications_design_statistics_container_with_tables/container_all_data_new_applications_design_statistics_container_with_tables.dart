import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/new_applications_design_statistics_admin_sum/all_data_new_applications_design_statistics_container_with_tables/data_container_all_data_new_applications_design_statistics_container_with_tables.dart';
import '../../../../../../../../../core/theming/colors.dart';

class ContainerAllDataNewApplicationsDesignStatisticsContainerWithTables extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? imageSrc1,title1,subTitle1,imageSrc2,nameCar2,kindCar2,imageSrc3,title3,subTitle3,text5;
  const ContainerAllDataNewApplicationsDesignStatisticsContainerWithTables({
    super.key,
    this.widthMobile,
    this.onTap,
    this.imageSrc1,
    this.title1,
    this.subTitle1,
    this.imageSrc2,
    this.kindCar2,
    this.nameCar2,
    this.subTitle3,
    this.title3,
    this.imageSrc3,
    this.text5,
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
      child: DataContainerAllDataNewApplicationsDesignStatisticsContainerWithTables(
        widthMobile: widthMobile,
        onTap: onTap,
        imageSrc1:imageSrc1,
        subTitle1:subTitle1,
        title1:title1 ,
        imageSrc2:imageSrc2,
        kindCar2:kindCar2,
        nameCar2:nameCar2,
        title3:title3,
        subTitle3:subTitle3,
        imageSrc3:imageSrc3,
        text5:text5,
      ),
    );
  }
}