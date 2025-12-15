import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/car_condition_widget.dart';

class FirstRowListDataContainerFirstPartScreen extends StatelessWidget {
  const FirstRowListDataContainerFirstPartScreen({super.key});

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
            CarConditionWidget(),
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
              title: 'توجه التأمين',
              titleColor: AppColors.greyColor,
              textSizeTitle: 14,
              subTitle: 'تكافلي',
              subTitleColor: AppColors.blackColor,
              textSizeSubTitle: 14,
              spacing: 15,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleWithSubTitle(
              title: 'اقسام التأمين',
              titleColor: AppColors.greyColor,
              textSizeTitle: 14,
              subTitle: 'أفراد وشركات',
              subTitleColor: AppColors.blackColor,
              textSizeSubTitle: 14,
              spacing: 15,
            ),
            TitleWithSubTitle(
              title: 'نسبة التحمل',
              titleColor: AppColors.greyColor,
              textSizeTitle: 14,
              subTitle: 'النسبة',
              subTitleColor: AppColors.blackColor,
              textSizeSubTitle: 14,
              numberPercentage: '10%',
              spacing: 15,
            ),
            PriceCarWidget(
              text: 'يبدأ من',
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
        CarConditionWidget(),
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
          title: 'توجه التأمين',
          titleColor: AppColors.greyColor,
          textSizeTitle: 14,
          subTitle: 'تكافلي',
          subTitleColor: AppColors.blackColor,
          textSizeSubTitle: 14,
          spacing: 15,
        ),
        TitleWithSubTitle(
          title: 'اقسام التأمين',
          titleColor: AppColors.greyColor,
          textSizeTitle: 14,
          subTitle: 'أفراد وشركات',
          subTitleColor: AppColors.blackColor,
          textSizeSubTitle: 14,
          spacing: 15,
        ),
        TitleWithSubTitle(
          title: 'نسبة التحمل',
          titleColor: AppColors.greyColor,
          textSizeTitle: 14,
          subTitle: 'النسبة',
          subTitleColor: AppColors.blackColor,
          textSizeSubTitle: 14,
          numberPercentage: '10%',
          spacing: 15,
        ),
        PriceCarWidget(
          text: 'يبدأ من',
          spacing: 15,
        ),
      ],
    );
  }
}
