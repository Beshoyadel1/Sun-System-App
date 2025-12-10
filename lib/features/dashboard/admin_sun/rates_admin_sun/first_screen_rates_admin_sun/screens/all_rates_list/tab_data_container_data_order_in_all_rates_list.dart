import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/custom_widget/number_rate_star.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/custom_widget/image_with_one_text.dart';
import '../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/number_of_text_widget.dart';
import '../../../../../../../core/theming/assets.dart';

class TabDataContainerDataOrderInAllRatesList extends StatelessWidget {
  final void Function()? onTap;
  final String? numberText1,imageSrc2,title2,subTitle2,title3,subTitle3,title4;
  const TabDataContainerDataOrderInAllRatesList({
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
        NumberOfTextWidget(
          numberText:numberText1,
        ),
        ImageWithOneText(
            imageSrc:imageSrc2?? AppImageKeys.best1,
            title:title2?? 'أسم المركز',
            titleColor: AppColors.blackColor,
        ),
        TitleWithSubTitle(
          title:title3?? 'عدد التقييمات',
          titleColor:AppColors.greyColor,
          subTitle:subTitle3??'100 تقييم',
          subTitleColor:AppColors.blackColor,
        ),
        NumberRateStar(title:title4?? '200'),
        ContainerDetailsWidget(
          title:'عرض التقييمات',
          onTap:onTap??(){
          },
        )
      ],
    );
  }
}