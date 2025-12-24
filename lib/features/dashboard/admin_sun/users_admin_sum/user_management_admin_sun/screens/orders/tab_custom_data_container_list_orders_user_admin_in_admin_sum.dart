import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/rates_admin_sun/custom_widget/image_with_one_text.dart';
import '../../../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/column_request_status_widget.dart';
import '../../../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/assets.dart';

class TabCustomDataContainerListOrdersUserAdminInAdminSum
    extends StatelessWidget {
  final void Function()? onTap;
  final String? imageSrc1,
      title1,
      title2,
      subTitle2,
      imageSrc2,
      imageSrc3,
      title3,
      subTitle3,
      subTitle5,
      title5,
      text6;

  const TabCustomDataContainerListOrdersUserAdminInAdminSum({
    super.key,
    this.onTap,
    this.imageSrc1,
    this.title1,
    this.title2,
    this.subTitle2,
    this.imageSrc2,
    this.subTitle3,
    this.title3,
    this.imageSrc3,
    this.subTitle5,
    this.title5,
    this.text6,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageWithOneText(
              imageSrc: imageSrc1 ?? AppImageKeys.test100,
              title: title1 ?? 'أسم المركز',
            ),
            ImageWithTwoText(
              imageSrc: imageSrc2 ?? AppImageKeys.service44,
              widthImage: 30,
              title: title2 ?? 'خدمات داخلية',
              subTitle: subTitle2 ?? 'زيوت',
              titleColor: AppColors.orangeColor,
              subTitleColor: AppColors.blackColor,
            ),
            ImageWithTwoText(
              imageSrc: imageSrc3 ?? AppImageKeys.person22,
              title: title3 ?? 'أسم العميل',
              subTitle: subTitle3 ?? 'أحمد محمود',
              titleColor: AppColors.greyColor,
              subTitleColor: AppColors.blackColor,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColumnRequestStatusWidget(textSizeContainer: 9, textSize: 12),
            TitleWithSubTitle(
              title: title5 ?? 'تاريخ الطلب',
              titleColor: AppColors.greyColor,
              textSizeSubTitle: 13,
              subTitle: subTitle5 ?? '1/1/2025',
              subTitleColor: AppColors.blackColor,
              textSizeTitle: 12,
            ),
            PriceCarWidget(text: text6 ?? 'سعر الخدمة'),
          ],
        ),
        ContainerDetailsWidget(
          title: AppLanguageKeys.details,
          onTap: onTap ?? () {},
        ),
      ],
    );
  }
}
