import 'package:flutter/cupertino.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/car_details_emp.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/number_message_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/logo_car_with_text_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/car_condition_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/number_of_text_widget.dart';
import '../../../../../../../core/theming/assets.dart';


class TabDataContainerDataCarInCarAuctionEmp extends StatelessWidget {
  const TabDataContainerDataCarInCarAuctionEmp({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NumberOfTextWidget(),
        ImageWithTwoText(
            imageSrc: AppImageKeys.test_car80,
            title: '2025',
            subTitle: 'Purch 2005',
            titleColor: AppColors.orangeColor,
            subTitleColor: AppColors.blackColor,
        ),
        CarConditionWidget(
          isNew: true,
        ),
        LogoCarWithTextWidget(),
        NumberMessageWidget(),
        PriceCarWidget(),
        ContainerDetailsWidget(
          onTap:(){
            Navigator.of(context).push(
              NavigateToPageWidget(CarDetailsEmp()),
            );
          },
        )
      ],
    );
  }
}