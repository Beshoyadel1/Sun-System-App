import 'package:flutter/cupertino.dart';
import '../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/assets.dart';

class TabDataContainerDataOrderInAllFirstScreenInsuranceAdminSunList extends StatelessWidget {
  final String? imageSrc1,title1,subTitle1,title2,subTitle2,title3,subTitle3,title4,subTitle4,title5,subTitle5;
  const TabDataContainerDataOrderInAllFirstScreenInsuranceAdminSunList({
    super.key,
    this.imageSrc1,
    this.title1,
    this.subTitle1,
    this.title2,
    this.subTitle2,
    this.subTitle3,
    this.title3,
    this.title4,
    this.subTitle4,
    this.title5,
    this.subTitle5
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageWithTwoText(
            imageSrc: imageSrc1??AppImageKeys.company1,
            title:title1?? 'التعاونية للتأمينات السيارات',
            subTitle:subTitle1?? 'افراد - شركات'
        ),
        TitleWithSubTitle(
          title:title2?? 'طرق دفعات ',
          titleColor:AppColors.greyColor,
          textSizeTitle: 14,
          subTitle:subTitle2??'Visa - مدي  -Stc Pay',
          subTitleColor:AppColors.blackColor,
          textSizeSubTitle: 14,
        ),
        TitleWithSubTitle(
          title:title3?? 'مدة دفعات',
          titleColor:AppColors.greyColor,
          textSizeSubTitle: 14,
          subTitle:subTitle3??'سنوي - نصف سنوي',
          subTitleColor:AppColors.blackColor,
          textSizeTitle: 14,
        ),
        TitleWithSubTitle(
          title:title4?? 'نوع التأمين',
          titleColor:AppColors.greyColor,
          textSizeSubTitle: 14,
          subTitle:subTitle4??'تكافلي',
          subTitleColor:AppColors.blackColor,
          textSizeTitle: 14,
        ),
        TitleWithSubTitle(
          title:title5?? 'طرق التأمين',
          titleColor:AppColors.greyColor,
          textSizeSubTitle: 14,
          subTitle:subTitle5??'شامل - ضد الغير',
          subTitleColor:AppColors.orangeColor,
          textSizeTitle: 14,
        ),
      ],
    );
  }
}