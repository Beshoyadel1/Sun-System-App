import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/sold_car_emp/sold_car_emp/sold_car_emp.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/container_design_message_details_car_widget.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_edit_delete_message/container_edit_delete_car_details.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_details_car/container_sold.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_details_car/images_car_details.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_details_car/title_with_sub_title_in_car_details2_emp.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_auction_emp/screens/all_cars/container_data_car_in_car_auction_emp.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/title_with_sub_title_in_car_details_emp.dart';


class DataContainerInListDataCarDetailsEmp extends StatelessWidget {
  const DataContainerInListDataCarDetailsEmp({super.key});
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
          TitleWithSubTitleInCarDetailsEmp(),

          if(isMobile)
            ContainerEditDeleteCarDetails(),

          ContainerDataCarInCarAuctionEmp(
            widthMobile: 1400,
          ),
          TitleWithSubTitleInCarDetails2Emp(),
          ImagesCarDetails(),

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
                ContainerDesignMessageDetailsCarWidget(),
                ContainerDesignMessageDetailsCarWidget(),
                ContainerDesignMessageDetailsCarWidget(),
              ],
            ),

          ContainerSold(
            onTap:(){
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => const SoldCarEmp(),
              );
            },
          ),
        ],
      ),
    );
  }
}
