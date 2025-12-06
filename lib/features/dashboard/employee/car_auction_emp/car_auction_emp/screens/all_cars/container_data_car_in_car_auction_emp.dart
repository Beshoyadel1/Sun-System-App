import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/car_auction_emp/screens/all_cars/data_container_data_car_in_car_auction_emp.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerDataCarInCarAuctionEmp extends StatelessWidget {
  final double? widthMobile;
  const ContainerDataCarInCarAuctionEmp({
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
      child: DataContainerDataCarInCarAuctionEmp(
        widthMobile: widthMobile,
      ),
    );
  }
}