import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/column_request_status_widget.dart';
import '../../../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../../../features/dashboard/employee/mobility_requests_emp/custom_widget/column_image_car_with_two_text_widget.dart';
import '../../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/assets.dart';


class TabCustomDataContainerDataAllDataRightStatisticsContainerWithTables extends StatelessWidget {
  final void Function()? onTap;
  final String? imageSrc1,title1,subTitle1,imageSrc2,nameCar2,kindCar2,imageSrc3,title3,subTitle3,text5;
  const TabCustomDataContainerDataAllDataRightStatisticsContainerWithTables({
    super.key,
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
    return Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageWithTwoText(
              imageSrc: imageSrc1??AppImageKeys.service33,
              widthImage: 30,
              title: title1??'خدمات داخلية',
              subTitle:subTitle1?? 'صيانة واصلاج',
              titleColor: AppColors.orangeColor,
              subTitleColor: AppColors.blackColor,
            ),
            ColumnImageCarWithTwoTextWidget(
              imageSrc:imageSrc2?? AppImageKeys.car1,
              kindCar:kindCar2?? 'Ariya',
              nameCar:nameCar2?? 'Nissan',
            ),
            ImageWithTwoText(
              imageSrc:imageSrc3?? AppImageKeys.person22,
              title:title3?? 'أسم السائق',
              subTitle:subTitle3?? 'أحمد محمود محمد',
              titleColor: AppColors.greyColor,
              subTitleColor: AppColors.blackColor,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColumnRequestStatusWidget(
              textSizeContainer: 9,
              textSize: 12,
            ),
            PriceCarWidget(
              text:text5?? 'سعر الخدمة',
            ),
            ContainerDetailsWidget(
              title:AppLanguageKeys.details,
              onTap:onTap??(){
              },
            )

          ],
        ),
      ],
    );
  }
}