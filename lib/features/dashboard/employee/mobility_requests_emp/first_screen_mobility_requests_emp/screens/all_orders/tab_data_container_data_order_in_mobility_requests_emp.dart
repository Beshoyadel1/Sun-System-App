import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/column_request_status_widget.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/column_packing_date_widget.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/custom_widget/column_image_car_with_two_text_widget.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/number_of_text_widget.dart';
import '../../../../../../../core/theming/assets.dart';


class TabDataContainerDataOrderInMobilityRequestsEmp extends StatelessWidget {
  final void Function()? onTap;
  final bool? isAccept,isReject,isNewOrder,isTruck;
  const TabDataContainerDataOrderInMobilityRequestsEmp({
    super.key,
    this.isAccept=false,
    this.isReject=false,
    this.isNewOrder=false,
    this.isTruck=false,
    this.onTap
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NumberOfTextWidget(),
        ImageWithTwoText(
            imageSrc: AppImageKeys.road1,
            title: 'خدمات متنقلة',
            subTitle: 'الطرق السريعة',
            titleColor: AppColors.orangeColor,
            subTitleColor: AppColors.blackColor,
        ),
        ColumnImageCarWithTwoTextWidget(
            imageSrc: AppImageKeys.car1,
            kindCar: 'Ariya',
            nameCar: 'Nissan',
        ),
        ColumnRequestStatusWidget(
          isTruck: isTruck,
          isAccept: isAccept,
          isNewOrder: isNewOrder,
          isReject:isReject,
          textSizeContainer: 10,
          textSize: 12,
        ),
        ColumnPackingDateWidget(
          title: AppLanguageKeys.requestDate,
          subTitle: '1/1/2025',
        ),
        PriceCarWidget(),
        ContainerDetailsWidget(
          onTap:onTap??(){
            // Navigator.of(context).push(
            //   NavigateToPageWidget(OrderDetailsEmp()),
            // );
          },
        )
      ],
    );
  }
}