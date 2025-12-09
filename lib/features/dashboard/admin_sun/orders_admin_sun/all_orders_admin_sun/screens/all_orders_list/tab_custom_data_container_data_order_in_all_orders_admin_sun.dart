import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/column_request_status_widget.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/order_details_emp.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/column_packing_date_widget.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/custom_widget/column_image_car_with_two_text_widget.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/number_of_text_widget.dart';
import '../../../../../../../core/theming/assets.dart';

class TabCustomDataContainerDataOrderInAllOrdersAdminSun extends StatelessWidget {
  final void Function()? onTap;
  final bool? isAccept4,isReject4,isNewOrder4,isTruck4;
  final String? numberText1,imageSrc2,title2,subTitle2,imageSrc3,kindCar3,nameCar3,title5,subTitle5,price6;
  const TabCustomDataContainerDataOrderInAllOrdersAdminSun({
    super.key,
    this.onTap,
    this.numberText1,
    this.imageSrc2,
    this.subTitle2,
    this.title2,
    this.imageSrc3,
    this.kindCar3,
    this.nameCar3,
    this.isAccept4=false,
    this.isReject4=false,
    this.isNewOrder4=false,
    this.isTruck4=false,
    this.title5,
    this.subTitle5,
    this.price6
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NumberOfTextWidget(
              numberText:numberText1 ,
            ),
            ImageWithTwoText(
              imageSrc:imageSrc2?? AppImageKeys.road1,
              title:title2?? 'خدمات متنقلة',
              subTitle:subTitle2?? 'الطرق السريعة',
              titleColor: AppColors.orangeColor,
              subTitleColor: AppColors.blackColor,
            ),
            ColumnImageCarWithTwoTextWidget(
              imageSrc:imageSrc3?? AppImageKeys.car1,
              kindCar:kindCar3?? 'Ariya',
              nameCar:nameCar3?? 'Nissan',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColumnRequestStatusWidget(
              isTruck: isTruck4,
              isAccept: isAccept4,
              isNewOrder: isNewOrder4,
              isReject:isReject4,
              textSizeContainer: 10,
              textSize: 12,
            ),
            ColumnPackingDateWidget(
              title:title5?? AppLanguageKeys.requestDate,
              subTitle:subTitle5?? '1/1/2025',
            ),
            PriceCarWidget(
              price:price6??'250' ,
            ),
          ],
        ),
        ContainerDetailsWidget(
          onTap:onTap??(){
            Navigator.of(context).push(
              NavigateToPageWidget(OrderDetailsEmp()),
            );
          },
        )
      ],
    );
  }
}