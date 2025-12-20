import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/column_request_status_widget.dart';
import '../../../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/assets.dart';

class MobileDataDesignContainerTableDriversInAllCompaniesAdminSum extends StatelessWidget {
  final void Function()? onTap;
  final String? imageSrc1,title1,subTitle1,imageSrc2,title2,subTitle2,imageSrc3,title3,subTitle3,title4,subTitle4;
  final bool? isNewOrder;
  const MobileDataDesignContainerTableDriversInAllCompaniesAdminSum({
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
    this.isNewOrder=false,
    this.title4,
    this.subTitle4,
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
              imageSrc:imageSrc1?? AppImageKeys.person22,
              title:title1?? 'أسم السائق',
              subTitle:subTitle1?? 'أحمد محمود محمد',
              titleColor: AppColors.greyColor,
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
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleWithSubTitle(
              title:title3?? 'رقم الهاتف',
              titleColor: AppColors.greyColor,
              textSizeTitle: 12,
              subTitle:subTitle3?? '+5055555',
              textSizeSubTitle: 12,
            ),
            TitleWithSubTitle(
              title:title4?? 'البريد الالكتروني',
              titleColor: AppColors.greyColor,
              textSizeTitle: 12,
              subTitle:subTitle4?? 'driver@gmail.com',
              textSizeSubTitle: 12,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColumnRequestStatusWidget(
              isNewOrder:isNewOrder,
              text: 'هوية السائق',
              textSizeContainer: 10,
              textSize: 12,
            ),
            ColumnRequestStatusWidget(
              isNewOrder:isNewOrder,
              text: 'رخصة السائق',
              textSizeContainer: 10,
              textSize: 12,
            ),          ],
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