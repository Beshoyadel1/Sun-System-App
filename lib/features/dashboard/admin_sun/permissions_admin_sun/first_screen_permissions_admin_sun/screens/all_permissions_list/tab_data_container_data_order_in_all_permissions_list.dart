import 'package:flutter/cupertino.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/assets.dart';

class TabDataContainerDataOrderInAllPermissionsList extends StatelessWidget {
  final void Function()? onTap;
  final String? numberText1,imageSrc2,title2,subTitle2,title3,subTitle3,title4;
  const TabDataContainerDataOrderInAllPermissionsList({
    super.key,
    this.onTap,
    this.numberText1,
    this.imageSrc2,
    this.subTitle2,
    this.title2,
    this.subTitle3,
    this.title3,
    this.title4,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       ImageWithTwoText(
           imageSrc: AppImageKeys.person22,
           title: AppLanguageKeys.jobName,
           subTitle: 'أحمد محمود محمد',
           titleColor: AppColors.greyColor,
            subTitleColor: AppColors.blackColor,
       ),
        TitleWithSubTitle(
          title:title3?? 'تاريخ الانضمام',
          titleColor:AppColors.greyColor,
          subTitle:subTitle3??'1/1/2025',
          subTitleColor:AppColors.blackColor,
          textSizeTitle: 13,
          textSizeSubTitle: 13,
        ),
        TitleWithSubTitle(
          title:title3?? 'حالة الحساب',
          titleColor:AppColors.greyColor,
          subTitle:subTitle3??'مفعل',
          subTitleColor:AppColors.blackColor,
          textSizeTitle: 13,
          textSizeSubTitle: 13,
        ),
        TitleWithSubTitle(
          title:title3?? 'الايميل',
          titleColor:AppColors.greyColor,
          subTitle:subTitle3??'amr@google.com',
          subTitleColor:AppColors.blackColor,
          textSizeTitle: 13,
          textSizeSubTitle: 13,
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