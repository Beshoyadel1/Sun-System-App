import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/custom_widget/image_with_one_text.dart';
import '../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/column_request_status_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/number_of_text_widget.dart';
import '../../../../../../../core/theming/assets.dart';

class TabCustomDataContainerDataOrderInAllProfitsFromPackagesList extends StatelessWidget {
  final bool? isAccept3,isReject3,isNewOrder3,isTruck3,isPaidSuccess3;
  final String? numberText1,imageSrc2,title2,title4,subTitle4,price5,text5;
  const TabCustomDataContainerDataOrderInAllProfitsFromPackagesList({
    super.key,
    this.numberText1,
    this.imageSrc2,
    this.title2,
    this.isAccept3=false,
    this.isReject3=false,
    this.isNewOrder3=false,
    this.isTruck3=false,
    this.isPaidSuccess3=false,
    this.title4,
    this.subTitle4,
    this.price5,
    this.text5
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NumberOfTextWidget(
              numberText:numberText1 ,
            ),
            ImageWithOneText(
              imageSrc:imageSrc2?? AppImageKeys.test100,
              title:title2?? 'أسم المركز',
              titleColor: AppColors.blackColor,
            ),
            ColumnRequestStatusWidget(
              isTruck: isTruck3,
              isAccept: isAccept3,
              isNewOrder: isNewOrder3,
              isReject:isReject3,
              isPaidSuccess:isPaidSuccess3,
              textSizeContainer: 8,
              textSize: 12,
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleWithSubTitle(
              title:title4??'تاريخ الطلب',
              textSizeTitle: 13,
              titleColor: AppColors.greyColor,
              subTitle:subTitle4?? '1/1/2025',
              textSizeSubTitle: 12,
            ),
            TitleWithSubTitle(
              title:title4??'تاريخ الطلب',
              textSizeTitle: 13,
              titleColor: AppColors.greyColor,
              subTitle:subTitle4?? '1/1/2025',
              textSizeSubTitle: 12,
            ),
            PriceCarWidget(
              text:text5 ??'سعر الباقة',
              price:price5??'250' ,
            ),
          ],
        ),
      ],
    );
  }
}