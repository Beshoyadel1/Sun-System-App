import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/drivers_in_all_companies_admin_sum/data_design_container_table_drivers_in_all_companies_admin_sum.dart';
import '../../../../../../../../../core/theming/colors.dart';

class DesignContainerTableOrdersInAllCompaniesAdminSum extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? imageSrc1,title1,subTitle1,imageSrc2,title2,subTitle2,imageSrc3,title3,subTitle3,title4,subTitle4;
  final bool? isNewOrder;
  const DesignContainerTableOrdersInAllCompaniesAdminSum({
    super.key,
    this.widthMobile,
    this.onTap,
    this.imageSrc1,
    this.title1,
    this.subTitle1,
    this.imageSrc2,
    this.title2,
    this.subTitle2,
    this.subTitle3,
    this.title3,
    this.imageSrc3,
    this.isNewOrder=false,
    this.title4,
    this.subTitle4,
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
      child: DataDesignContainerTableDriversInAllCompaniesAdminSum(
        widthMobile: widthMobile,
        onTap: onTap,
        imageSrc1:imageSrc1,
        subTitle1:subTitle1,
        title1:title1 ,
        imageSrc2:imageSrc2,
        title2:title2,
        subTitle2:subTitle2,
        title3:title3,
        subTitle3:subTitle3,
        imageSrc3:imageSrc3,
        isNewOrder:isNewOrder,
        title4:title4,
        subTitle4:subTitle4,
      ),
    );
  }
}