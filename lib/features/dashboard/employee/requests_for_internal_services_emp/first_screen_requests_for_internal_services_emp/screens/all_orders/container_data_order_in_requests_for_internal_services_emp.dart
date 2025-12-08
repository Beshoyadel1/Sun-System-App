import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/data_container_data_order_in_mobility_requests_emp.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerDataOrderInRequestsForInternalServicesEmp extends StatelessWidget {
  final double? widthMobile,widthTabletCustom;
  final void Function()? onTap;
  final bool? isAccept4,isReject4,isNewOrder4,isTruck4;
  final String? numberText1,imageSrc2,title2,subTitle2,imageSrc3,kindCar3,nameCar3,title5,subTitle5,price6;
  const ContainerDataOrderInRequestsForInternalServicesEmp({
    super.key,
    this.widthMobile,
    this.widthTabletCustom,
    this.onTap,
    this.numberText1,
    this.imageSrc2,
    this.subTitle2,
    this.title2,
    this.imageSrc3,
    this.kindCar3,
    this.nameCar3,
    this.isAccept4=false,
    this.isReject4=false,
    this.isNewOrder4=false,
    this.isTruck4=false,
    this.title5,
    this.subTitle5,
    this.price6,
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
      child: DataContainerDataOrderInMobilityRequestsEmp(
        widthMobile: widthMobile,
        widthTabletCustom:widthTabletCustom,
        onTap: onTap,
        numberText1:numberText1,
        imageSrc2:imageSrc2,
        subTitle2:subTitle2,
        title2:title2,
        imageSrc3:imageSrc3,
        kindCar3:kindCar3,
        nameCar3:nameCar3,
        isAccept4:isAccept4,
        isNewOrder4:isNewOrder4,
        isReject4:isReject4,
        isTruck4:isTruck4,
        subTitle5:subTitle5,
        title5:title5,
        price6:price6,
      ),
    );
  }
}