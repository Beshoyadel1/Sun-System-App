import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/features/change_car/custom_widget/image_with_two_text.dart';
import 'package:sun_system_app/features/dashboard/admin_sun/rates_admin_sun/custom_widget/image_with_one_text.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/column_request_status_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/number_of_text_widget.dart';

class TabDataContainerDataOrderInAllSecondScreenInsuranceAdminSunList extends StatelessWidget {
  final void Function()? onTap;
  final bool? isActive,isInActive;
  final String? numberText1,imageSrc2,title2,subTitle2,title3,subTitle3,imageSrc3,title4,subTitle4,title5,subTitle5;
  const TabDataContainerDataOrderInAllSecondScreenInsuranceAdminSunList({
    super.key,
    this.onTap,
    this.isActive=false,
    this.isInActive=false,
    this.numberText1,
    this.imageSrc2,
    this.title2,
    this.subTitle2,
    this.subTitle3,
    this.title3,
    this.imageSrc3,
    this.subTitle4,
    this.title4,
    this.subTitle5,
    this.title5,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NumberOfTextWidget(
          numberText:numberText1,
        ),
        ImageWithTwoText(
          imageSrc:imageSrc2?? AppImageKeys.person22,
          title:title2?? 'أسم العميل',
          subTitle:subTitle2?? 'أسم العميل',
          titleColor: AppColors.greyColor,
          subTitleColor: AppColors.blackColor,
        ),
        ImageWithTwoText(
          imageSrc:imageSrc3?? AppImageKeys.test_car80,
          title:title3?? '2222',
          subTitle:subTitle3?? 'Purch 2005',
          titleColor: AppColors.orangeColor,
          subTitleColor: AppColors.blackColor,
        ),
        TitleWithSubTitle(
          title:title4??'تاريخ الدفعة',
          textSizeTitle: 13,
          titleColor: AppColors.greyColor,
          subTitle:subTitle4?? '1/1/2025',
          textSizeSubTitle: 12,
        ),
        TitleWithSubTitle(
          title:title5??'نوع الدفعه',
          textSizeTitle: 13,
          titleColor: AppColors.greyColor,
          subTitle:subTitle5?? 'دفعه سنوية',
          textSizeSubTitle: 12,
        ),
        ColumnRequestStatusWidget(
          isActive:isActive,
          isInActive:isInActive,
          text: 'حالة الدفع',
          textSizeContainer: 12,
          textSize: 12,
        ),
        ContainerDetailsWidget(
          onTap:onTap ,
        )
      ],
    );
  }
}