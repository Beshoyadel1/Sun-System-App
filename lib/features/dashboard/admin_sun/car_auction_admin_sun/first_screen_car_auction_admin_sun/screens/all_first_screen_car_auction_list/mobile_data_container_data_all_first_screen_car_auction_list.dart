import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/column_request_status_widget.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/custom_widget/image_with_one_text.dart';
import '../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/assets.dart';

class MobileDataContainerDataAllFirstScreenCarAuctionList extends StatelessWidget {
  final void Function()? onTap;
  final String? imageSrc1,title1,title3,subTitle3,title4,subTitle4;
  final bool? isAccept,isReject,isNewOrder,isTruck,isPaidSuccess,isServiceProvider;

  const MobileDataContainerDataAllFirstScreenCarAuctionList({
    super.key,
    this.onTap,
    this.imageSrc1,
    this.title1,
    this.isAccept=false,
    this.isReject=false,
    this.isNewOrder=false,
    this.isTruck=false,
    this.isPaidSuccess=false,
    this.isServiceProvider=false,
    this.subTitle3,
    this.title3,
    this.title4,
    this.subTitle4
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
              imageSrc:imageSrc1?? AppImageKeys.best1,
              title:title1?? 'أسم المركز',
              titleColor: AppColors.blackColor,
            ),
            ColumnRequestStatusWidget(
              isTruck: isTruck,
              isAccept: isAccept,
              isNewOrder: isNewOrder,
              isReject:isReject,
              isPaidSuccess:isPaidSuccess,
              isServiceProvider:isServiceProvider,
              text: 'حالة مزود الخدمة',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleWithSubTitle(
              title:title3?? 'عدد الطلبات',
              titleColor:AppColors.greyColor,
              textSizeTitle: 14,
              subTitle:subTitle3??'100 طلب',
              subTitleColor:AppColors.blackColor,
              textSizeSubTitle: 14,
            ),
            TitleWithSubTitle(
              title:title4?? 'تاريخ الطلب',
              titleColor:AppColors.greyColor,
              textSizeSubTitle: 14,
              subTitle:subTitle4??'1/1/2025',
              subTitleColor:AppColors.blackColor,
              textSizeTitle: 14,
            ),
          ],
        ),
        ContainerDetailsWidget(
          onTap:onTap??(){
          },
        )
      ],
    );
  }
}