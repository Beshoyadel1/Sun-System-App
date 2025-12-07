import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/order_details_emp.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/column_packing_date_widget.dart';
import '../../../../../../../features/dashboard/employee/spare_parts_requests_emp/custom_widget/column_image_car_with_two_text_widget.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/car_condition_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/number_of_text_widget.dart';
import '../../../../../../../core/theming/assets.dart';


class TabDataContainerDataOrderInSparePartsRequestsEmp extends StatelessWidget {
  final void Function()? onTap;
  const TabDataContainerDataOrderInSparePartsRequestsEmp({
    super.key,
    this.onTap
  });  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NumberOfTextWidget(),
        ImageWithTwoText(
            imageSrc: AppImageKeys.spare_parts,
            title: 'اطارات',
            subTitle: 'اطارت سبورت',
            titleColor: AppColors.orangeColor,
            subTitleColor: AppColors.blackColor,
        ),
        ColumnImageCarWithTwoTextWidget(
            imageSrc: AppImageKeys.car1,
            kindCar: 'Ariya',
            nameCar: 'Nissan',
        ),
        ImageWithTwoText(
          imageSrc: AppImageKeys.person22,
          title: AppLanguageKeys.shippingCompany,
          subTitle: 'اسم الشركة',
          titleColor: AppColors.greyColor,
          subTitleColor: AppColors.blackColor,
        ),
        CarConditionWidget(
          isNew: true,
          textContainer: AppLanguageKeys.onTheWay,
        ),
        ColumnPackingDateWidget(
          title: AppLanguageKeys.requestDate,
          subTitle: '1/1/2025',
        ),
        PriceCarWidget(),
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