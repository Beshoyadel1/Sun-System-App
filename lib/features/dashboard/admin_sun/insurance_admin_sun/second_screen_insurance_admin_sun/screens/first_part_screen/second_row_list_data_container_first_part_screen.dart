import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';

class SecondRowListDataContainerFirstPartScreen extends StatelessWidget {
  const SecondRowListDataContainerFirstPartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1060;
    return isMobile?
    Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleWithSubTitle(
              title: 'الدفعات',
              titleColor: AppColors.greyColor,
              textSizeTitle: 14,
              subTitle: 'نصف سنوي - سنوي',
              subTitleColor: AppColors.blackColor,
              textSizeSubTitle: 14,
              spacing: 15,
            ),
            TitleWithSubTitle(
              title: 'موديل من',
              titleColor: AppColors.greyColor,
              textSizeTitle: 14,
              subTitle: '2015',
              subTitleColor: AppColors.blackColor,
              textSizeSubTitle: 14,
              spacing: 15,
              iconData: Icons.calendar_today,
              iconDataColor: AppColors.orangeColor,
            ),
            TitleWithSubTitle(
              title: 'موافقة فورية',
              titleColor: AppColors.greyColor,
              textSizeTitle: 14,
              subTitle: 'نعم',
              subTitleColor: AppColors.blackColor,
              textSizeSubTitle: 14,
              spacing: 15,
              iconData: Icons.done,
              iconDataColor: AppColors.greenColor,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleWithSubTitle(
              title: 'حوادث شخصية',
              titleColor: AppColors.greyColor,
              textSizeTitle: 14,
              subTitle: 'نعم',
              subTitleColor: AppColors.blackColor,
              textSizeSubTitle: 14,
              spacing: 15,
              iconData: Icons.done,
              iconDataColor: AppColors.greenColor,
            ),
            TitleWithSubTitle(
              title: 'خصم عدم المطالبة',
              titleColor: AppColors.greyColor,
              textSizeTitle: 14,
              subTitle: 'نعم',
              subTitleColor: AppColors.blackColor,
              textSizeSubTitle: 14,
              spacing: 15,
              iconData: Icons.speed,
              iconDataColor: AppColors.orangeColor,
            ),
            PriceCarWidget(
              text: 'الحد الاقصي',
              spacing: 15,
            ),
          ],
        ),
      ],
    )
        :
      Row(
      spacing: 30,
      children: [
        TitleWithSubTitle(
          title: 'الدفعات',
          titleColor: AppColors.greyColor,
          textSizeTitle: 14,
          subTitle: 'نصف سنوي - سنوي',
          subTitleColor: AppColors.blackColor,
          textSizeSubTitle: 14,
          spacing: 15,
        ),
        TitleWithSubTitle(
          title: 'موديل من',
          titleColor: AppColors.greyColor,
          textSizeTitle: 14,
          subTitle: '2015',
          subTitleColor: AppColors.blackColor,
          textSizeSubTitle: 14,
          spacing: 15,
          iconData: Icons.calendar_today,
          iconDataColor: AppColors.orangeColor,
        ),
        TitleWithSubTitle(
          title: 'موافقة فورية',
          titleColor: AppColors.greyColor,
          textSizeTitle: 14,
          subTitle: 'نعم',
          subTitleColor: AppColors.blackColor,
          textSizeSubTitle: 14,
          spacing: 15,
          iconData: Icons.done,
          iconDataColor: AppColors.greenColor,
        ),
        TitleWithSubTitle(
          title: 'حوادث شخصية',
          titleColor: AppColors.greyColor,
          textSizeTitle: 14,
          subTitle: 'نعم',
          subTitleColor: AppColors.blackColor,
          textSizeSubTitle: 14,
          spacing: 15,
          iconData: Icons.done,
          iconDataColor: AppColors.greenColor,
        ),
        TitleWithSubTitle(
          title: 'خصم عدم المطالبة',
          titleColor: AppColors.greyColor,
          textSizeTitle: 14,
          subTitle: 'نعم',
          subTitleColor: AppColors.blackColor,
          textSizeSubTitle: 14,
          spacing: 15,
          iconData: Icons.speed,
          iconDataColor: AppColors.orangeColor,
        ),
        PriceCarWidget(
          text: 'الحد الاقصي',
          spacing: 15,
        ),
      ],
    );
  }
}
