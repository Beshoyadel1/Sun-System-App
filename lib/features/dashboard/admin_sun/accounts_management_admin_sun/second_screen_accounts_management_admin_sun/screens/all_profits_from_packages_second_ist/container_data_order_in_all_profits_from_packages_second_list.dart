import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/second_screen_accounts_management_admin_sun/screens/all_profits_from_packages_second_ist/data_container_data_order_in_all_profits_from_packages_second_list.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerDataOrderInAllProfitsFromPackagesSecondList extends StatelessWidget {
  final double? widthMobile,widthTabletCustom;
  final void Function()? onTap;
  final bool? isAccept4,isReject4,isNewOrder4,isTruck4,isPaidSuccess4;
  final String? numberText1,title2,subTitle2,title3,subTitle3,subTitle4,price5,text5;
  const ContainerDataOrderInAllProfitsFromPackagesSecondList({
    super.key,
    this.widthMobile,
    this.widthTabletCustom,
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
    this.text5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.greyColor.withOpacity(0.3)
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: DataContainerDataOrderInAllProfitsFromPackagesSecondList(
        widthMobile: widthMobile,
        widthTabletCustom:widthTabletCustom,
        numberText1:numberText1,
        subTitle2:subTitle2,
        title2:title2,
        subTitle3:subTitle3,
        title3:title3,
        isAccept4: isAccept4,
        isNewOrder4: isNewOrder4,
        isPaidSuccess4:isPaidSuccess4,
        isReject4:isReject4,
        isTruck4:isTruck4,
        subTitle4:subTitle4,
        text5: text5,
        price5: price5,
        onTap:onTap ,
      ),
    );
  }
}