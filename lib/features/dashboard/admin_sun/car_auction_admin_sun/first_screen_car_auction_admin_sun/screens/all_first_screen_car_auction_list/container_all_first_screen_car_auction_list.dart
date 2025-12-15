import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/first_screen_car_auction_admin_sun/screens/all_first_screen_car_auction_list/data_container_all_first_screen_car_auction_list.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerAllFirstScreenCarAuctionList extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? imageSrc1,title1,title3,subTitle3,title4,subTitle4;
  final bool? isAccept,isReject,isNewOrder,isTruck,isPaidSuccess,isServiceProvider;
  const ContainerAllFirstScreenCarAuctionList({
    super.key,
    this.widthMobile,
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
      child: DataContainerAllFirstScreenCarAuctionList(
        widthMobile: widthMobile,
        onTap: onTap,
        imageSrc1:imageSrc1,
        title1:title1,
        isTruck:isTruck,
        isAccept:isAccept,
        isNewOrder:isNewOrder,
        isReject:isReject,
        isPaidSuccess:isPaidSuccess,
        isServiceProvider:isServiceProvider,
        title3:title3,
        subTitle3:subTitle3,
        title4:title4,
        subTitle4:subTitle4,
      ),
    );
  }
}