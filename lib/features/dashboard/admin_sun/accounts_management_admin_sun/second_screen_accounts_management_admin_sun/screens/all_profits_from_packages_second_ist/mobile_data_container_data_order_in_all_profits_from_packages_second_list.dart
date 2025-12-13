import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/column_request_status_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/price_car_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/dashboard/Admin/Petroleum_Service/custom_widget/number_of_text_widget.dart';

class MobileDataContainerDataOrderInAllProfitsFromPackagesSecondList extends StatelessWidget {
  final void Function()? onTap;
  final bool? isAccept4,isReject4,isNewOrder4,isTruck4,isPaidSuccess4;
  final String? numberText1,title2,subTitle2,title3,subTitle3,subTitle4,price5,text5;
  const MobileDataContainerDataOrderInAllProfitsFromPackagesSecondList({
    super.key,
    this.onTap,
    this.numberText1,
    this.title2,
    this.subTitle2,
    this.subTitle3,
    this.title3,
    this.isTruck4=false,
    this.isAccept4=false,
    this.isNewOrder4=false,
    this.isPaidSuccess4=false,
    this.isReject4=false,
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
              numberText:numberText1,
            ),
            TitleWithSubTitle(
              title:title2??'نوع المعاملة',
              textSizeTitle: 13,
              titleColor: AppColors.greyColor,
              subTitle:subTitle2?? 'خدمات صيانة داخلية',
              textSizeSubTitle: 12,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleWithSubTitle(
              title:title3??'تاريخ الطلب',
              textSizeTitle: 13,
              titleColor: AppColors.greyColor,
              subTitle:subTitle3?? '1/1/2025',
              textSizeSubTitle: 12,
            ),
            ColumnRequestStatusWidget(
              isTruck: isTruck4,
              isAccept: isAccept4,
              isNewOrder: isNewOrder4,
              isReject:isReject4,
              textSizeContainer: 9,
              textSize: 12,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PriceCarWidget(
              text:text5 ??'سعر',
              price:price5??'250' ,
            ),
            ContainerDetailsWidget(
              onTap:onTap ,
            )
          ],
        ),
      ],
    );
  }
}