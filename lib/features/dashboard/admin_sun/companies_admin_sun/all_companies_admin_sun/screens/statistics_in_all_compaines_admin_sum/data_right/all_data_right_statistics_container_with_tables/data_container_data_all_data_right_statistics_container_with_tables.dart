import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_right/all_data_right_statistics_container_with_tables/tab_custom_data_container_data_all_data_right_statistics_container_with_tables.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_right/all_data_right_statistics_container_with_tables/mobile_data_container_data_all_data_right_statistics_container_with_tables.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_right/all_data_right_statistics_container_with_tables/tab_data_container_data_all_data_right_statistics_container_with_tables.dart';


class DataContainerDataAllDataRightStatisticsContainerWithTables extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? imageSrc1,title1,subTitle1,imageSrc2,nameCar2,kindCar2,imageSrc3,title3,subTitle3,text5;
  const DataContainerDataAllDataRightStatisticsContainerWithTables({
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
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??1105);
    bool isTabletCustom = size.width > 1105 && size.width <= 1475;

    return isTabletCustom?
    TabCustomDataContainerDataAllDataRightStatisticsContainerWithTables(
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
    )
        :
      isMobile?
    MobileDataContainerDataAllDataRightStatisticsContainerWithTables(
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
    )
        :
    TabDataContainerDataAllDataRightStatisticsContainerWithTables(
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
    );
  }
}