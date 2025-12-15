import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/screens/all_cars_admin_sum/data_container_data_car_in_car_auction_admin_sum.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerDataCarInCarAuctionAdminSum extends StatelessWidget {
  final double? widthMobile;
  const ContainerDataCarInCarAuctionAdminSum({
    super.key,
    this.widthMobile
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
      child: DataContainerDataCarInCarAuctionAdminSum(
        widthMobile: widthMobile,
      ),
    );
  }
}