import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/drivers_in_all_companies_admin_sum/mobile_data_design_container_table_drivers_in_all_companies_admin_sum.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/drivers_in_all_companies_admin_sum/tab_custom_data_design_container_table_drivers_in_all_companies_admin_sum.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/drivers_in_all_companies_admin_sum/tab_data_design_container_table_drivers_in_all_companies_admin_sum.dart';

class DataDesignContainerTableDriversInAllCompaniesAdminSum extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? imageSrc1,title1,subTitle1,imageSrc2,title2,subTitle2,imageSrc3,title3,subTitle3,title4,subTitle4;
  final bool? isNewOrder;
  const DataDesignContainerTableDriversInAllCompaniesAdminSum({
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
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??800);
    bool isTabletCustom = size.width > 800 && size.width <= 1200;

    return isTabletCustom?
    TabCustomDataDesignContainerTableDriversInAllCompaniesAdminSum(
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
    )
        :
      isMobile?
      MobileDataDesignContainerTableDriversInAllCompaniesAdminSum(
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
    )
        :
      TabDataDesignContainerTableDriversInAllCompaniesAdminSum(
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
    );
  }
}