import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/sold_car_admin_sum/sold_car_emp/sold_car_admin_sum.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_details_car_admin_sun/container_sold_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_details_car_admin_sun/images_car_details_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_details_car_admin_sun/title_with_sub_title_in_car_details2_emp_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/screens/all_cars_admin_sum/container_data_car_in_car_auction_admin_sum.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_edit_delete_message_admin_sun/container_edit_delete_car_details_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/title_with_sub_title_in_car_details_admin_sun.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/container_design_message_details_car_widget.dart';


class DataContainerInListDataCarDetailsAdminSun extends StatelessWidget {
  const DataContainerInListDataCarDetailsAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 950;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          TitleWithSubTitleInCarDetailsAdminSun(),

          ContainerDataCarInCarAuctionAdminSum(
            widthMobile: 1400,
            onTap: (){},
          ),
          if(isMobile)
            ContainerEditDeleteCarDetailsAdminSun(),

          TitleWithSubTitleInCarDetails2EmpAdminSun(),
          ImagesCarDetailsAdminSun(),
          if(isMobile)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 30,
              children: [
                TextInAppWidget(
                  text:AppLanguageKeys.messages,
                  textSize: 17,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:AppColors.blackColor44,
                ),
                ContainerDesignMessageDetailsCarWidget(
                  isMessage: true,
                ),
                ContainerDesignMessageDetailsCarWidget(
                  isMessage: true,
                ),
                ContainerDesignMessageDetailsCarWidget(),
                ContainerDesignMessageDetailsCarWidget(),
              ],
            ),

          ContainerSoldAdminSun(
            onTap:(){
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => const SoldCarAdminSum(),
              );
            },
          ),
        ],
      ),
    );
  }
}
