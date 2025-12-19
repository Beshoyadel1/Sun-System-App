import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/column_request_status_widget.dart';
import '../../../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/assets.dart';

class TabCustomDataDesignContainerTableOrdersInAllCompaniesAdminSum extends StatelessWidget {
  final void Function()? onTap;
  final String? imageSrc1,title1,subTitle1,imageSrc2,title2,subTitle2,imageSrc3,title3,subTitle3,title5,subTitle5,price6;
  final bool? isWaitingForApproval,isNewOrder,isAccept;
  const TabCustomDataDesignContainerTableOrdersInAllCompaniesAdminSum({
    super.key,
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
    this.isWaitingForApproval=false,
    this.isAccept=false,
    this.isNewOrder=false,
    this.title5,
    this.subTitle5,
    this.price6,
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
              imageSrc: imageSrc1??AppImageKeys.service22,
              widthImage: 30,
              title: title1??'صيانة متنقلة',
              subTitle:subTitle1?? 'زيوت',
              titleColor: AppColors.orangeColor,
              subTitleColor: AppColors.blackColor,
            ),
            ImageWithTwoText(
              imageSrc: imageSrc2??AppImageKeys.car1,
              title: title2??'تويوتا - كورولا',
              subTitle:subTitle2?? 'س ث ب 245',
              titleColor: AppColors.blackColor,
              subTitleColor: AppColors.blackColor,
              isLeftToRight: true,
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
              isWaitingForApproval:isWaitingForApproval,
              isNewOrder:isNewOrder,
              isAccept:isAccept,
              textSizeContainer: 9,
              textSize: 12,
            ),
            TitleWithSubTitle(
              title:title5?? 'تاريخ الطلب',
              titleColor: AppColors.greyColor,
              textSizeTitle: 12,
              subTitle:subTitle5?? '1/1/2025',
              textSizeSubTitle: 12,
            ),
            PriceCarWidget(
              text: 'سعر الخدمة',
              price:price6?? '250',
            ),
          ],
        ),
        ContainerDetailsWidget(
          title:AppLanguageKeys.details,
          onTap:onTap??(){
          },
        )
      ],
    );
  }
}